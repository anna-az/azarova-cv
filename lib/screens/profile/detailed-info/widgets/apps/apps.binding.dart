// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'apps.controller.dart';
import 'apps.service.dart';

class AppsBinding implements Bindings {
  @override
  void dependencies() {
    Get
      ..lazyPut(AppsService.new)
      ..put(AppsController(Get.find(), Get.find(), Get.find(), Get.find()));
  }
}
