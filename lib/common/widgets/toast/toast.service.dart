// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Package imports:
import 'package:bot_toast/bot_toast.dart';
import 'package:get/get.dart';

// Project imports:
import '../../base/image-asset.dart';
import '../../styles/insets.styles.dart';
import '../../styles/text.styles.dart';
import '../../theme/theme.extensions.dart';
import '../icon/icon.widget.dart';
import '../spacers/spacers.widget.dart';

class ToastService extends GetxService {
  void showErrorToast(String title) => _showToast(title, _NotifyType.error);

  void showSuccessToast(String title) => _showToast(title, _NotifyType.success);

  void _showToast(String text, _NotifyType type) {
    late ImageAsset icon;

    switch (type) {
      case _NotifyType.success:
        icon = ImageAsset.success;
        break;
      case _NotifyType.error:
        icon = ImageAsset.error;
        break;
      default:
    }
    BotToast.showCustomNotification(
        toastBuilder: (void Function() cancelFunc) => Container(
            constraints: const BoxConstraints(minHeight: 68),
            padding: EdgeInsets.all(Insets.large),
            margin: EdgeInsets.symmetric(horizontal: Insets.sm),
            decoration: BoxDecoration(
                color: Get.context?.themeColors.dark,
                borderRadius: BorderRadius.circular(Insets.large)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(children: <Widget>[
                  IconWidget(icon,
                      width: 25, color: Get.context?.themeColors.grayWhite),
                  HSpace.med,
                  Expanded(
                    child:
                        Text(text, style: const TextStyle().stroke.smallSize),
                  ),
                  HSpace.med,
                  GestureDetector(
                      onTap: cancelFunc,
                      child: IconWidget(
                        ImageAsset.cross,
                        width: 20,
                        color: Get.context?.themeColors.grayWhite,
                      )),
                ]),
              ],
            )));
  }
}

enum _NotifyType { error, success }
