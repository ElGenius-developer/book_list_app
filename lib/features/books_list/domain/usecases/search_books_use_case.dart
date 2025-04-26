import 'package:book_list_app/core/networking/api_response/api_response.dart';
import 'package:book_list_app/features/books_list/domain/entities/books_response.dart';
import 'package:book_list_app/features/books_list/domain/repositories/books_repository.dart';

class SearchBooksUseCase {
  final BooksRepository repository;

  const SearchBooksUseCase(this.repository);

  Future<ApiResponse<BooksResponse>> call(int page, String query) => repository.searchBooks(page, query);
}
