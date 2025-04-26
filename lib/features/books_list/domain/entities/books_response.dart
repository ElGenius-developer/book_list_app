import 'package:book_list_app/features/books_list/domain/entities/book.dart';

class BooksResponse {
  final int? count;
  final String? next;
  final String? previous;
  final List<Book> results;

  const BooksResponse({required this.count, required this.next, required this.previous, required this.results});

  bool get canLoadMore => next != null;
}
