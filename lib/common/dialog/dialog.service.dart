// Flutter imports:
import 'package:flutter/cupertino.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../widgets/popups/confirm-popup/confirm-popup.widget.dart';
import '../widgets/popups/input-popup/input-popup.widget.dart';
import 'dialog.model.dart';

class DialogService extends GetxService {
  Future<bool> confirm(DialogModel dialogModel) async {
    final bool? isConfirm =
        await Get.dialog<bool>(ConfirmPopupWidget(dialogModel));
    return isConfirm ?? false;
  }

  Future<String?> input(DialogModel dialogModel) async {
    final String? text =
        await Get.dialog<String?>(InputPopupWidget(dialogModel));
    return text;
  }

  Future<void> showBottomDialog(Widget child) => Get.bottomSheet(child);
}
