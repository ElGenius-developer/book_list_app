part of 'books_cubit.dart';

@freezed
class BooksState with _$BooksState {
  const factory BooksState.initial() = _Initial;

  const factory BooksState.loadingBooks() = _LoadingBooks;

  const factory BooksState.booksListLoaded({required List<Book> books, required bool canLoadMore}) =
      _BooksListLoaded;

  const factory BooksState.booksLoadFail({
    required String message,
    required List<Book> books,
    required bool canLoadMore,
  }) = _BooksLoadFail;
}
