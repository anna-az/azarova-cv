// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

// Project imports:
import '../../json-serializable/json-serializable-with-id.interface.dart';
import '../../json-serializable/json-serializable.interface.dart';

abstract class CacheListServiceKey<T extends IJsonSerializable>
    extends GetxService {
  CacheListServiceKey({required this.hiveBox}) : _box = Hive.box(hiveBox);
  final String hiveBox;

  final Box<dynamic> _box;

  List<T> get items => _box.values.map((dynamic e) {
        final Map<String, dynamic> json =
            jsonDecode(jsonEncode(e)) as Map<String, dynamic>;
        return fromJson(json);
      }).toList();

  Future<void> cacheList<U extends IJsonSerializableWithId>(
      List<U> list) async {
    for (final U item in list) {
      await cacheItem(item as T, key: item.id);
    }
  }

  Future<void> cacheItem(T model, {int? key}) async {
    final Map<String, dynamic> json = model.toJson();
    await _box.put(_transformKey(key?.toString() ?? hiveBox), json);
  }

  String _transformKey(String key) => key.toLowerCase().trim();

  Future<void> deleteByKey(String? key) async {
    if (key == null) {
      return;
    }
    await _box.delete(_transformKey(key));
  }

  Future<void> deleteByKeys(List<String> keys) async {
    await _box.deleteAll(keys);
  }

  Future<void> deleteAll() async {
    await _box.clear();
  }

  T? getItem({String? key}) {
    final dynamic item = _box.get(key ?? hiveBox);
    if (item != null && item is Map) {
      final Map<String, dynamic> json =
          jsonDecode(jsonEncode(item)) as Map<String, dynamic>;
      return fromJson(json);
    }
    return null;
  }

  T fromJson(Map<String, dynamic> json);
}
