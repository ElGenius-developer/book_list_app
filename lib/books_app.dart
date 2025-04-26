import 'package:book_list_app/core/constants/light_theme.dart';
import 'package:book_list_app/core/routing/app_router.dart';
import 'package:book_list_app/features/books_list/presentation/cubits/books_cubit.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import 'core/constants/colors.dart';
import 'core/di/dependency_injection.dart';

/* Created by Ahmed Ashraf on 4/24/2025.*/
class BooksListApp extends StatefulWidget {
  final AppRouter appRouter;

  const BooksListApp(this.appRouter, {super.key});

  @override
  State<BooksListApp> createState() => _BooksListAppState();
}

class _BooksListAppState extends State<BooksListApp> {
  @override
  Widget build(BuildContext context) {
    return DevicePreview(
      enabled: kDebugMode,
      isToolbarVisible: kDebugMode,
      builder:
          (ctx) => BlocProvider(
            create: (context) => sl<BooksCubit>()..fetchBooks(),
            child: RootRestorationScope(
              restorationId: "root",
              child: MaterialApp.router(
                title: "Books List App",
                routerConfig: widget.appRouter.router,
                color: ColorsManager.mainColor,
                theme: LightTheme.themeData,
                themeMode: ThemeMode.light,
                debugShowCheckedModeBanner: false,
              ),
            ),
          ),
    );
  }

  @override
  void dispose() {
    //close hive data base boxes
    Hive.close();
    sl<BooksCubit>().close();
    super.dispose();
  }
}
