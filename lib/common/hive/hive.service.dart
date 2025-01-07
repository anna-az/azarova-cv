// Dart imports:
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

// Package imports:
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

// Project imports:
import '../../screens/profile/detailed-info/widgets/contacts/phone/phone.model.dart';
import 'hive.boxes.dart';

class HiveService extends GetxService {
  Future<HiveService> init() async {
    final Directory docDirectory = await getApplicationDocumentsDirectory();
    await Hive.initFlutter('${docDirectory.path}/local');
    Hive.registerAdapter(PhoneModelAdapter());
    await _openBoxes();
    return this;
  }

  Future<void> _openBoxes() async {
    final HiveAesCipher encryptionCipher = await _getEncryptionCipher();
    for (final HiveBoxes value in HiveBoxes.values) {
      await Hive.openBox<dynamic>(value.name,
          encryptionCipher: encryptionCipher);
    }
  }

  Future<HiveAesCipher> _getEncryptionCipher() async {
    const FlutterSecureStorage secureStorage = FlutterSecureStorage();
    const String hiveKey = 'hiveKey';
    String? encryptionKeyString = await secureStorage.read(key: hiveKey);

    if (encryptionKeyString == null) {
      final List<int> key = Hive.generateSecureKey();
      final String encodedKey = base64UrlEncode(key);
      await secureStorage.write(
        key: hiveKey,
        value: encodedKey,
      );
      encryptionKeyString = encodedKey;
    }

    final Uint8List encryptionKeyUint8List =
        base64Url.decode(encryptionKeyString);
    return HiveAesCipher(encryptionKeyUint8List);
  }
}
