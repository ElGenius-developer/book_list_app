import 'dart:io';

import 'package:book_list_app/core/routing/app_router.dart';
import 'package:book_list_app/core/utils/cacher/cacher.dart';
import 'package:book_list_app/features/books_list/data/data_sources/local/i_books_local_data_source.dart';
import 'package:book_list_app/features/books_list/data/data_sources/remote/i_books_remote_data_source.dart';
import 'package:book_list_app/features/books_list/data/repositories/book_repository_impl.dart';
import 'package:book_list_app/features/books_list/domain/repositories/books_repository.dart';
import 'package:book_list_app/features/books_list/domain/usecases/get_books_use_case.dart';
import 'package:book_list_app/features/books_list/domain/usecases/search_books_use_case.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

import '../../features/books_list/presentation/cubits/books_cubit.dart';

final GetIt sl = GetIt.instance;

void setUpLocator({required Directory appDirectory, required List<int> encryptionKey}) {
  // * AppRouter
  sl.registerSingleton<AppRouter>(AppRouter.instance);
  // * HTTP Client
  sl.registerSingleton<http.Client>(http.Client());
  // * Cacher
  sl.registerSingleton(Cacher(encryptionKey));
  // * Directory
  sl.registerSingleton<Directory>(appDirectory);

  // * Connectivity
  sl.registerSingleton<Connectivity>(Connectivity());
  // * Data sources
  sl.registerLazySingleton<IBooksRemoteDataSource>(() => BooksRemoteDataSourceImpl(sl()));
  sl.registerLazySingleton<IBooksLocalDataSource>(() => BooksLocalDataSourceImpl(sl()));

  // * Repository
  sl.registerLazySingleton<BooksRepository>(
    () => BookRepositoryImpl(remoteDataSource: sl(), localDataSource: sl(), connectivity: sl()),
  );

  // * Use cases
  sl.registerLazySingleton(() => GetBooksUseCase(sl()));
  sl.registerLazySingleton(() => SearchBooksUseCase(sl()));
  // * Cubit
  sl.registerLazySingleton(() => BooksCubit(sl(), sl()));
}
