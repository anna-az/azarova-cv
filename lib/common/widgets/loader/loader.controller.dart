// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

class LoaderController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController loaderController;
  @override
  void onInit() {
    loaderController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
    loaderController.repeat();
    super.onInit();
  }

  @override
  void onClose() {
    loaderController.dispose();
    super.onClose();
  }
}
