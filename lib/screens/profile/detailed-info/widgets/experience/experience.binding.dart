// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'experience.controller.dart';

class ExperienceBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ExperienceController(Get.find()));
  }
}
