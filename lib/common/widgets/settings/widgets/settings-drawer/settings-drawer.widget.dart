// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../../app-translation/translation.extensions.dart';
import '../../../../base/image-asset.dart';
import '../../../../styles/insets.styles.dart';
import '../../../divider/divider.widget.dart';
import '../../../spacers/spacers.widget.dart';
import '../../settings.controller.dart';
import '../../settings.translations.dart';
import '../settings-button/settings-button.widget.dart';
import '../settings-header/settings-header.widget.dart';

class SettingsDrawerWidget extends GetView<SettingsController> {
  const SettingsDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        width: MediaQuery.of(context).size.width - 45,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(Insets.large),
              bottomRight: Radius.circular(Insets.large)),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(Insets.med),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SettingsHeaderWidget(),
                Obx(
                  () => SettingsButtonWidget(
                    title: SettingsTranslationNames.language.tr,
                    description:
                        controller.selectedLanguage.value.translatedTitle,
                    onTap: controller.openLanguagesScreen,
                    icon: ImageAsset.language,
                  ),
                ),
                SettingsButtonWidget(
                  title: SettingsTranslationNames.themeTitle.tr,
                  description: SettingsTranslationNames.themeDescription.tr,
                  onTap: controller.setTheme,
                  icon: ImageAsset.theme,
                  switcherChange: controller.isDarkTheme,
                ),
                VSpace.regular,
                const DividerWidget(),
              ],
            ),
          ),
        ),
      );
}
