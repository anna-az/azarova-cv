// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'skills.controller.dart';

class SkillsBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SkillsController(Get.find(), Get.find()));
  }
}
