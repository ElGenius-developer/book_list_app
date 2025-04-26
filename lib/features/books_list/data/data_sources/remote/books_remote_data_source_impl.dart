part of 'i_books_remote_data_source.dart';

//https://url/books/?page=1
class BooksRemoteDataSourceImpl extends IBooksRemoteDataSource {
  final http.Client client;

  BooksRemoteDataSourceImpl(this.client);

  @override
  Future<BooksResponseModel> getBooks(int page) async {
    final uri = Uri(
      scheme: Env.schema,
      host: Env.serverUrl,
      path: '/books',
      queryParameters: {'page': page.toString()},
    );
    final response = await client.get(uri).timeout(Duration(seconds: 10));

    return BooksResponseModel.fromJson(jsonDecode(response.body));
  }

  //https://url.com/books/?page=1&search=Or
  @override
  Future<BooksResponseModel> searchBooks(int page, String query) async {
    final uri = Uri(
      scheme: Env.schema,
      host: Env.serverUrl,
      path: '/books',
      queryParameters: {'page': page.toString(), 'search': query},
    );

    final response = await client.get(uri).timeout(Duration(seconds: 10));
    return BooksResponseModel.fromJson(jsonDecode(response.body));
  }
}
