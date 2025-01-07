// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'experience.controller.dart';
import 'experience.service.dart';

class ExperienceBinding implements Bindings {
  @override
  void dependencies() {
    Get
      ..lazyPut(ExperienceService.new)
      ..put(ExperienceController(Get.find(), Get.find()));
  }
}
