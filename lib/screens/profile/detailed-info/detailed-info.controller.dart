// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'detailed-info.service.dart';

class DetailedInfoController extends GetxController {
  DetailedInfoController(DetailedInfoService detailedInfoService)
      : isEdit = detailedInfoService.isEdit,
        formKey = detailedInfoService.formKey;

  final RxBool isEdit;

  final GlobalKey<FormState> formKey;

  void changeIsEdit() {
    if (isEdit.value &&
        formKey.currentState != null &&
        !formKey.currentState!.validate()) {
      return;
    }

    isEdit.value = !isEdit.value;
  }

  void onBackTap() => isEdit.value = false;
}
