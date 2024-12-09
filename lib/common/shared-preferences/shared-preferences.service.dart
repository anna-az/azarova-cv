// Package imports:
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService extends GetxService {
  Future<SharedPreferencesService> init() async {
    _prefs = await SharedPreferences.getInstance();
    return this;
  }

  late SharedPreferences _prefs;

  Future<T?> getData<T>(String key) async => _prefs.get(key) as T?;

  Future<bool> clearData(String key) async => _prefs.remove(key);

  Future<bool> saveData<T>(String key, T value) async {
    if (value is String) {
      return _prefs.setString(key, value);
    }
    if (value is bool) {
      return _prefs.setBool(key, value);
    }
    return false;
  }
}
