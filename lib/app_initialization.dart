import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:book_list_app/core/di/dependency_injection.dart';
import 'package:book_list_app/features/books_list/data/models/book/book_model.dart';
import 'package:book_list_app/features/books_list/data/models/books_response_model/books_response_model.dart';
import 'package:book_list_app/features/books_list/data/models/format/format_model.dart';
import 'package:book_list_app/features/books_list/data/models/person/person_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

/* Created by Ahmed Ashraf on 4/24/2025.*/
class AppInitialization {
  // ------------------------ initialize the app ------------------------
  static Future<void> initialize() async {
    WidgetsFlutterBinding.ensureInitialized();

    //set the app orientation to portrait
    // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    final appDirectory = await _setUpDirectory();
    await Hive.initFlutter("${appDirectory.path}/cache");
    Hive
      ..registerAdapter(BooksResponseModelAdapter())
      ..registerAdapter(BookModelAdapter())
      ..registerAdapter(PersonModelAdapter())
      ..registerAdapter(BookFormatModelAdapter());
    final json = await _loadJsonFromAssets("assets/cipher_key.json");

    List<int> key = json == null ? [] : List<int>.from(json["key"]);

    setUpLocator(appDirectory: appDirectory, encryptionKey: key);
  }

  // ------------------------ initialize the app directory ------------------------
  static Future<Directory> _setUpDirectory() async {
    const path = "/books_list_app/files";
    late final Directory appDirectory;
    try {
      if (!kIsWeb) {
        final directory = await getApplicationDocumentsDirectory();

        appDirectory = Directory('${directory.path}$path');
      } else {
        appDirectory = Directory(path);
      }
      await appDirectory.create();
    } catch (error) {
      log(error.toString());
    }

    return appDirectory;
  }

  //  ------------------------ Load the json file  ------------------------

  static Future<Map<String, dynamic>?> _loadJsonFromAssets(String path) async {
    try {
      final jsonString = await rootBundle.loadString(path);
      final data = jsonDecode(jsonString) as Map<String, dynamic>;

      return data;
    } catch (error) {
      log(error.toString());
      return null;
    }
  }
}
