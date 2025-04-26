import 'package:book_list_app/core/networking/api_error/api_error_handler.dart';
import 'package:book_list_app/core/utils/extensions_methods/string_extension.dart';
import 'package:book_list_app/features/books_list/domain/entities/book.dart';
import 'package:book_list_app/features/books_list/domain/usecases/get_books_use_case.dart';
import 'package:book_list_app/features/books_list/domain/usecases/search_books_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'books_cubit.freezed.dart';
part 'books_state.dart';

class BooksCubit extends Cubit<BooksState> {
  final GetBooksUseCase getBooksUseCase;
  final SearchBooksUseCase searchBooksUseCase;
  int _currentPage = 1;
  String? _currentQuery;
  List<Book> books = [];

  BooksCubit(this.getBooksUseCase, this.searchBooksUseCase) : super(const BooksState.initial());

  ///* Fetch initial books (page 1)
  Future<void> fetchBooks({String? query}) async {
    emit(BooksState.loadingBooks());
    try {
      //reset page to first page on initial loading.
      _currentPage = 1;
      final result =
          query.isNotNullOrEmpty
              ? await searchBooksUseCase.call(_currentPage, query!)
              : await getBooksUseCase.call(_currentPage);

      result.when(
        success: (data) {
          books = data.results;
          emit(BooksState.booksListLoaded(books: data.results, canLoadMore: data.canLoadMore));
        },
        failure:
            (errorHandler) => emit(
              BooksState.booksLoadFail(
                canLoadMore: false,
                books: [],
                message: errorHandler.apiErrorModel.message,
              ),
            ),
      );
    } catch (e) {
      final error = ErrorHandler.handle(e);
      emit(BooksState.booksLoadFail(books: [], message: error.apiErrorModel.message, canLoadMore: false));
    }
  }

  ///* Load more books (pagination)
  Future<void> loadMoreBooks() async {
    final currentState = state;
    //check if the current state is not loaded books state or it's it but  (no more result)
    if (currentState is! _BooksListLoaded || !currentState.canLoadMore) {
      return;
    }

    try {
      //increase the current page with one to get the next page
      _currentPage++;
      final result =
          _currentQuery != null
              ? await searchBooksUseCase.call(_currentPage, _currentQuery!)
              : await getBooksUseCase.call(_currentPage);
      result.when(
        success: (data) {
          books = [...currentState.books, ...data.results];
          //add the new books to the existing books
          emit(BooksState.booksListLoaded(books: books, canLoadMore: data.canLoadMore));
        },
        failure:
            (errorHandler) => emit(
              BooksState.booksLoadFail(
                canLoadMore: false,
                message: "No More books",
                books: currentState.books,
              ),
            ),
      );
    } catch (e) {
      _currentPage--; // Revert page on failure
      final error = ErrorHandler.handle(e);

      emit(
        BooksState.booksListLoaded(
          books: books,
          canLoadMore: false, // Disable pagination
        ),
      );
      emit(BooksState.booksLoadFail(message: error.apiErrorModel.message, canLoadMore: false, books: books));
    }
  }

  ///* Search books
  Future<void> searchBooks(String query) async {
    if (query.isEmpty) {
      _currentQuery = null; // rest current Query
      _currentPage = 1; // Reset to page 1
      await fetchBooks();
      return;
    }

    emit(BooksState.loadingBooks());
    try {
      _currentQuery = query;
      _currentPage = 1;
      final result = await searchBooksUseCase.call(_currentPage, query);
      result.when(
        success: (data) {
          books = data.results;
          if (books.isEmpty) {
            emit(BooksState.booksLoadFail(books: [], canLoadMore: true, message: "No books found"));
          } else {
            emit(BooksState.booksListLoaded(books: data.results, canLoadMore: data.canLoadMore));
          }
        },

        failure:
            (errorHandler) => emit(
              BooksState.booksLoadFail(
                books: [],
                canLoadMore: false,
                message: errorHandler.apiErrorModel.message,
              ),
            ),
      );
    } catch (e) {
      final error = ErrorHandler.handle(e);
      emit(BooksState.booksLoadFail(books: books, canLoadMore: false, message: error.apiErrorModel.message));
    }
  }

  void clearSearch() {
    _currentQuery = null; // rest current Query
    _currentPage = 1; // Reset to page 1
    // emit(const BooksState.initial());
    //emit the last state
    emit(state);
  }
}
