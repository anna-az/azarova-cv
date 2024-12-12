// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'apps.controller.dart';

class AppsBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AppsController(Get.find(), Get.find(), Get.find()));
  }
}
