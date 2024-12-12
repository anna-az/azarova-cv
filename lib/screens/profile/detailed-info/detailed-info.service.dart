// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../profile.model.dart';
import '../profile.service.dart';

class DetailedInfoService extends GetxService {
  DetailedInfoService(ProfileService profileService)
      : user = profileService.user;

  final RxBool isEdit = false.obs;
  final ProfileModel user;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
}
