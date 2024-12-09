// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'languages.controller.dart';
import 'languages.service.dart';

class LanguagesBinding implements Bindings {
  @override
  Future<void> dependencies() async {
    Get
      ..lazyPut(() => LanguagesService(Get.find()))
      ..put(LanguageController(Get.find(), Get.find(), Get.find()));
  }
}
