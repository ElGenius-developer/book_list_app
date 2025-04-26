import 'package:book_list_app/features/books_list/domain/entities/books_response.dart';

import '../../../../core/networking/api_response/api_response.dart';

abstract class BooksRepository {
  Future<ApiResponse<BooksResponse>> getBooks(int page);

  Future<ApiResponse<BooksResponse>> searchBooks(int page, String query);
}
