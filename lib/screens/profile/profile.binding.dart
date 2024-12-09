// Package imports:
import 'package:get/get.dart';

import '../../common/widgets/settings/settings.controller.dart';
import '../../common/widgets/settings/settings.service.dart';
import 'profile.controller.dart';
import 'profile.service.dart';

class ProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get
      ..put(SettingsService(Get.find()))
      ..put(SettingsController(Get.find(), Get.find(), Get.find()))
      ..lazyPut(ProfileService.new)
      ..put(ProfileController(Get.find()));
  }
}
