import 'package:book_list_app/core/networking/api_error/api_error_handler.dart';
import 'package:book_list_app/core/networking/api_response/api_response.dart';
import 'package:book_list_app/features/books_list/data/data_sources/local/i_books_local_data_source.dart';
import 'package:book_list_app/features/books_list/data/data_sources/remote/i_books_remote_data_source.dart';
import 'package:book_list_app/features/books_list/data/models/books_response_model/books_response_model.dart';
import 'package:book_list_app/features/books_list/domain/entities/books_response.dart';
import 'package:book_list_app/features/books_list/domain/repositories/books_repository.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class BookRepositoryImpl implements BooksRepository {
  final IBooksRemoteDataSource remoteDataSource;
  final IBooksLocalDataSource localDataSource;
  final Connectivity connectivity;

  const BookRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.connectivity,
  });

  ///- Get books from online source or fallback to cache if offline
  @override
  Future<ApiResponse<BooksResponse>> getBooks(int page, {String? query}) async {
    final isConnected = await _isOnline();

    if (isConnected) {
      try {
        final booksResponse = await remoteDataSource.getBooks(page).timeout(Duration(seconds: 10));
        await _cacheBooks(booksResponse, page, query); // Cache results

        return ApiResponse.success(booksResponse.toEntity());
      } catch (e) {
        return _getCachedBooks(page, query); // Fallback to cache
      }
    } else {
      return _getCachedBooks(page, query); // Fallback
    }
  }

  ///- Search for books from online source or fallback to cache if offline

  @override
  Future<ApiResponse<BooksResponse>> searchBooks(int page, String query) async {
    final isConnected = await _isOnline();

    if (isConnected) {
      try {
        final booksResponse = await remoteDataSource.searchBooks(page, query).timeout(Duration(seconds: 10));
        await _cacheBooks(booksResponse, page, query); // Cache results
        return ApiResponse.success(booksResponse.toEntity());
      } catch (e) {
        return _getCachedBooks(page, query); // Fallback to cache
      }
    } else {
      return _getCachedBooks(page, query); // Fallback
    }
  }

  ///- Get books from cache
  Future<ApiResponse<BooksResponse>> _getCachedBooks(int page, String? query) async {
    BooksResponseModel? cachedBooks;

    // Check if query is not null
    //not null meaning its search
    if (query != null) {
      cachedBooks = await localDataSource
          .getCachedSearchResult(page: page, query: query)
          .timeout(Duration(seconds: 10));
    } else {
      //its not search
      cachedBooks = await localDataSource.getCachedBooksResult(page: page).timeout(Duration(seconds: 10));
    }

    final result = cachedBooks?.toEntity();
    return result != null
        ? ApiResponse.success(result)
        : ApiResponse.failure(ErrorHandler.handle('No books found'));
  }

  ///- Check internet connectivity
  Future<bool> _isOnline() async {
    final result = await connectivity.checkConnectivity();
    return !result.contains(ConnectivityResult.none);
  }

  ///- Cache books
  Future<void> _cacheBooks(BooksResponseModel bookResponse, int page, String? query) async {
    if (query != null) {
      await localDataSource.cacheSearchResult(bookResponse: bookResponse, page: page, query: query);
    } else {
      await localDataSource.cacheBooksResult(bookResponse: bookResponse, page: page);
    }
  }
}
