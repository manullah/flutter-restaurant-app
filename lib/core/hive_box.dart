import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

enum MainBoxKeys {
  favorite,
}

mixin class MainBoxMixin {
  static late Box? mainBox;

  static Future<void> initHive() async {
    await Hive.initFlutter();
    mainBox = await Hive.openBox('restaurant_app');
  }

  static Future<void> addData<T>(MainBoxKeys key, T value) async {
    await mainBox?.put(key.name, value);
  }

  static Future<void> removeData(MainBoxKeys key) async {
    await mainBox?.delete(key.name);
  }

  static T getData<T>(MainBoxKeys key) => mainBox?.get(key.name) as T;

  static Future<void> closeBox() async {
    try {
      if (mainBox != null) {
        await mainBox?.close();
        await mainBox?.deleteFromDisk();
      }
    } catch (e, stackTrace) {
      debugPrint('$stackTrace');
    }
  }

  // -- favorite
  static List<String> getFavorites() {
    final List<String> list = getData(MainBoxKeys.favorite) ?? [];
    return list;
  }

  static bool isMyFavorite(String id) {
    final myList = getFavorites().where((element) => element == id).toList();
    return myList.isNotEmpty ? true : false;
  }

  static void addFavorite(String id) async {
    if (isMyFavorite(id)) {
      final newList = getFavorites().where((element) => element != id).toList();
      addData(MainBoxKeys.favorite, newList);
    } else {
      final newList = [...getFavorites(), id];
      addData(MainBoxKeys.favorite, newList);
    }
  }
}
