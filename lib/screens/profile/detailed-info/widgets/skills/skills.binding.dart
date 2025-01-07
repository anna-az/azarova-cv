// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'skills.controller.dart';
import 'skills.service.dart';

class SkillsBinding implements Bindings {
  @override
  void dependencies() {
    Get
      ..lazyPut(SkillsService.new)
      ..put(SkillsController(Get.find(), Get.find(), Get.find()));
  }
}
