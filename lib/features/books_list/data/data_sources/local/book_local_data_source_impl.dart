part of 'i_books_local_data_source.dart';

class BooksLocalDataSourceImpl extends IBooksLocalDataSource {
  static const searchBoxName = "SearchResult";
  static const booksListBoxName = "BooksResult";
  final Cacher cacher;

  const BooksLocalDataSourceImpl(this.cacher);

  @override
  Future<void> cacheBooksResult({required BooksResponseModel bookResponse, required int page}) async {
    final key = _generateBooksKey(page);
    await cacher.cacheValue<BooksResponseModel>(cacheKey: key, boxName: booksListBoxName, value: bookResponse);
  }

  @override
  Future<void> cacheSearchResult({required BooksResponseModel bookResponse, required int page, required String query}) {
    final key = _generateSearchKey(query, page);
    return cacher.cacheValue<BooksResponseModel>(cacheKey: key, boxName: searchBoxName, value: bookResponse);
  }

  @override
  Future<BooksResponseModel?> getCachedBooksResult({required int page}) async {
    final key = _generateBooksKey(page);
    return await cacher.getCache<BooksResponseModel?>(cacheKey: key, boxName: booksListBoxName);
  }

  @override
  Future<BooksResponseModel?> getCachedSearchResult({required int page, required String query}) async {
    final key = _generateSearchKey(query, page);
    return (await cacher.getCache<BooksResponseModel?>(cacheKey: key, boxName: searchBoxName));
  }

  // Key generators
  String _generateBooksKey(int page) => 'books_page_$page';

  String _generateSearchKey(String query, int page) => 'search_${query}_page_$page';
}
