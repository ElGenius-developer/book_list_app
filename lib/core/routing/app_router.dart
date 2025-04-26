library;

import 'dart:core';

import 'package:book_list_app/features/books_list/domain/entities/book.dart';
import 'package:book_list_app/features/books_list/presentation/pages/book_list_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/books_list/presentation/pages/book_item_details_screen.dart';

part 'route_names.dart';
part 'router_page_creation.dart';

// **** ------------------------------------------------------------------------------------------- ***
final class AppRouter {
  //global key of navigation used for navigate without calling context
  static final navigationKey = GlobalKey<NavigatorState>(debugLabel: "navigationKey");

  AppRouter._();

  static final AppRouter _instance = AppRouter._();

  static final instance = _instance;

  static MaterialPage _errorBuilder(GoRouterState state) => MaterialPage(
    child: Scaffold(backgroundColor: Colors.white, body: Center(child: Text(state.error.toString()))),
  );

  //**** ------------------------------------------------------------------------------------------- ***
  final GoRouter router = GoRouter(
    routerNeglect: true,
    overridePlatformDefaultLocation: true,
    navigatorKey: navigationKey,
    initialLocation: RoutesNames.bookListScreen,
    restorationScopeId: "app_root",
    requestFocus: false,
    errorPageBuilder: (context, state) => _errorBuilder(state),
    debugLogDiagnostics: false,
    routes: <RouteBase>[
      /// ---------------------------Book List Screen-------------------------------------------
      GoRoute(
        name: RoutesNames.bookListScreen,
        path: RoutesNames.bookListScreen,
        pageBuilder: (_, state) => createRouterPage(const BookListScreen()),
      ),

      /// ---------------------------Book item screen -------------------------------------------
      GoRoute(
        name: RoutesNames.bookDetails,
        path: "${RoutesNames.bookDetails}/:bookId",
        pageBuilder: (_, state) {
          final book = state.extra as Book;
          return createRouterPage(BookItemDetailsScreen(book: book));
        },
      ),
    ],
  );
}
