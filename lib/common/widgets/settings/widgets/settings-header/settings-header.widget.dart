// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../../app-translation/translation.extensions.dart';
import '../../../../base/image-asset.dart';
import '../../../../styles/insets.styles.dart';
import '../../../../styles/text.styles.dart';
import '../../../../theme/theme.extensions.dart';
import '../../../icon/icon.widget.dart';
import '../../settings.controller.dart';
import '../../settings.translations.dart';

class SettingsHeaderWidget extends GetView<SettingsController> {
  const SettingsHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(vertical: Insets.regular),
        child: Row(
          children: <Widget>[
            InkWell(
              onTap: controller.closeDrawer,
              child: IconWidget(
                ImageAsset.back,
                color: context.themeColors.dark2,
              ),
            ),
            Text(SettingsTranslationNames.settings.tr,
                style: const TextStyle().dark2.mediumSize.mediumWeight)
          ],
        ),
      );
}
