// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../app-translation/translation.extensions.dart';
import '../../../dialog/dialog.model.dart';
import '../../../styles/insets.styles.dart';
import '../../../styles/text.styles.dart';
import '../../../theme/theme.extensions.dart';
import '../../button/button.widget.dart';
import '../../input/input.widget.dart';
import '../../spacers/spacers.widget.dart';
import '../popup.translation.dart';
import 'input-popup.controller.dart';

class InputPopupWidget extends GetView<InputPopupController> {
  const InputPopupWidget(this.dialogModel, {super.key});
  final DialogModel dialogModel;

  @override
  Widget build(BuildContext context) {
    Get.put(InputPopupController(Get.find()));
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Insets.xxl)),
      child: Container(
        padding: EdgeInsets.all(Insets.xxl),
        decoration: BoxDecoration(
            color: context.themeColors.gray2,
            borderRadius: BorderRadius.circular(Insets.xxl)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(dialogModel.title.tr,
                style: const TextStyle().primaryText.h6.regularWeight),
            VSpace.lg,
            Text(dialogModel.content.tr,
                style: const TextStyle().primaryText.smallSize.regularWeight),
            VSpace.xxl,
            InputWidget(textEditingController: controller.textController),
            VSpace.xxl,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                ButtonWidget(
                    title: dialogModel.cancelText?.tr ??
                        ConfirmPopupTranslationNames.cancel.tr,
                    onTap: controller.onCancel,
                    color: context.themeColors.gray2,
                    textColor: context.themeColors.blue),
                ButtonWidget(
                    title: dialogModel.confirmText?.tr ??
                        ConfirmPopupTranslationNames.save.tr,
                    onTap: controller.onSave)
              ],
            )
          ],
        ),
      ),
    );
  }
}
