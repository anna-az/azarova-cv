// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'languages-cache.service.dart';
import 'languages.controller.dart';
import 'languages.service.dart';

class LanguagesBinding implements Bindings {
  @override
  void dependencies() {
    Get
      ..lazyPut(LanguagesCacheService.new)
      ..lazyPut(() => LanguagesService(Get.find()))
      ..put(LanguagesController(Get.find(), Get.find(), Get.find()));
  }
}
