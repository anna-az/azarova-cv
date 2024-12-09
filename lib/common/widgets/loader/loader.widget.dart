// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../base/image-asset.dart';
import '../icon/icon.widget.dart';
import 'loader.controller.dart';

class LoaderWidget extends GetView<LoaderController> {
  const LoaderWidget({super.key});

  @override
  Widget build(BuildContext context) => RotationTransition(
      turns:
          Tween<double>(begin: 0, end: 1).animate(controller.loaderController),
      child: const IconWidget(ImageAsset.loader, width: 100));
}
