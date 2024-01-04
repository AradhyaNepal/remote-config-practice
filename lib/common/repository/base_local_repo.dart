import 'dart:developer';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:remote_config_practice/common/repository/user_preferences_local_repo.dart';

abstract class BaseLocalRepo {
  //Todo: Better alternative from the Hive class itself would be better option
  static bool _hiveLocationInitialized = false;

  static Future<void> initAll() async {
    await _initializeHiveLocation();
    await UserPreferencesLocalRepo().init();
  }

  static Future<void> _initializeHiveLocation() async {
    if (_hiveLocationInitialized) {
      log("Hive already initialized");
      return;
    }
    try {
      await Hive.initFlutter();
      _hiveLocationInitialized = true;
    } catch (e, s) {
      log(e.toString());
      log(s.toString());
    }
  }

  final String _boxName;

  BaseLocalRepo(this._boxName);

  late final Box _hiveBox;

  Future<void> init() async {
    try {
      _hiveBox = await Hive.openBox(_boxName);
    } catch (e, s) {
      log(e.toString());
      log(s.toString());
    }
  }

  Future<void> put(String key, dynamic value) async {
    await _hiveBox.put(key, value);
  }

  Future<void> delete(String key) async {
    await _hiveBox.delete(key);
  }

  dynamic get(String key) async {
    return _hiveBox.get(key);
  }
}
