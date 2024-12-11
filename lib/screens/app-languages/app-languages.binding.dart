// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'app-languages.controller.dart';
import 'app-languages.service.dart';

class AppLanguagesBinding implements Bindings {
  @override
  Future<void> dependencies() async {
    Get
      ..lazyPut(() => AppLanguagesService(Get.find()))
      ..put(AppLanguageController(Get.find(), Get.find(), Get.find()));
  }
}
