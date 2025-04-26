import 'package:book_list_app/app_initialization.dart';
import 'package:book_list_app/books_app.dart';
import 'package:book_list_app/core/routing/app_router.dart';
import 'package:flutter/material.dart';

import 'core/di/dependency_injection.dart';

Future<void> main() async {
  await AppInitialization.initialize();
  final router = sl<AppRouter>();
  runApp(BooksListApp(router));
}
