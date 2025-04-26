import 'package:book_list_app/features/books_list/domain/entities/book.dart';
import 'package:flutter/material.dart';

/* Created by Ahmed Ashraf on 4/25/2025.*/
class BookItemScreen extends StatelessWidget {
  final Book book;

  const BookItemScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(book.title ?? "")),
      body: const Center(child: Text('Book Item')),
    );
  }
}
