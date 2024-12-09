// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../../../common/styles/text.styles.dart';
import '../../../../../common/widgets/input/input.widget.dart';
import 'about.controller.dart';

class AboutWidget extends GetView<AboutController> {
  const AboutWidget({super.key});

  @override
  Widget build(BuildContext context) => Obx(() {
        if (controller.isEdit.value) {
          return InputWidget(
              textEditingController: controller.aboutController,
              isTextArea: true);
        }
        return Text(controller.aboutController.text,
            style: const TextStyle().dark2.mediumSize.regularWeight);
      });
}
