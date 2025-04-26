import 'dart:developer';
import 'package:hive/hive.dart';

class Cacher {
  final List<int> encryptionKey;

  late Box box;

  Cacher(this.encryptionKey);

  Future<Box<T>> _openBoxIfClosed<T>(String boxName) async {

    final cipher = HiveAesCipher(encryptionKey);

    return await Hive.openBox(
      boxName,
      encryptionCipher: cipher,
    );
    // }
  }

  Future<bool> cacheValue<T>({required String cacheKey, required String boxName, required T value}) async {
    try {
      box = await _openBoxIfClosed(boxName);

      await box.put(cacheKey, value);

      return true;
    } on HiveError catch (error) {
      log(error.message);

      return false;
    }
  }

  // * 3
  /// get cached data
  Future<T?> getCache<T>({required String cacheKey, required String boxName}) async {
    try {
      box = await _openBoxIfClosed(boxName);

      //if the box is empty then return null to check on it later
      if (box.isEmpty) {
        return null;
      } else {
        final result = box.get(cacheKey);

        return result;
      }
    } on HiveError catch (error) {
      log(error.message);

      return null;
    }
  }

  /// * 4 close box
  Future<void> closeBox() async {
    await box.flush();
    await box.clear();
    await box.deleteFromDisk();
    if (box.isOpen) {
      await box.close();
    }
  }

  /// * 5 clear cached object
  Future<void> clearCache() async {
    await box.clear();
  }
}