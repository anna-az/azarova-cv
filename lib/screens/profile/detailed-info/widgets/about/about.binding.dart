// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'about.controller.dart';

class AboutBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AboutController(Get.find()));
  }
}
