// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'languages.controller.dart';
import 'languages.service.dart';

class LanguagesBinding implements Bindings {
  @override
  void dependencies() {
    Get
      ..lazyPut(() => LanguagesService(Get.find()))
      ..put(LanguagesController(Get.find(), Get.find()));
  }
}
