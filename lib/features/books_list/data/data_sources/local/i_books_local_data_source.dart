import 'package:book_list_app/core/utils/cacher/cacher.dart';
import 'package:book_list_app/features/books_list/data/models/books_response_model/books_response_model.dart';

part 'book_local_data_source_impl.dart';

abstract interface class IBooksLocalDataSource {
  const IBooksLocalDataSource();

  /// Cache books list results in hive
  Future<void> cacheBooksResult({required BooksResponseModel bookResponse, required int page});

  /// Cache search results
  Future<void> cacheSearchResult({required BooksResponseModel bookResponse, required int page, required String query});

  /// Get cached regular book list
  Future<BooksResponseModel?> getCachedBooksResult({required int page});

  /// Get cached search results
  Future<BooksResponseModel?> getCachedSearchResult({required int page, required String query});
}
