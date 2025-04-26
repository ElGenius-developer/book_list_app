import 'dart:convert';

import 'package:book_list_app/core/utils/env/env.dart';
import 'package:http/http.dart' as http;

import '../../models/books_response_model/books_response_model.dart';

part 'books_remote_data_source_impl.dart';

abstract interface class IBooksRemoteDataSource {
  Future<BooksResponseModel> getBooks(int page);

  Future<BooksResponseModel> searchBooks(int page, String query);
}
