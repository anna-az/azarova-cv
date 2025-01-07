// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../../../common/base/image-asset.dart';
import '../../../../../common/styles/insets.styles.dart';
import '../../../../../common/theme/theme.extensions.dart';
import '../../../../../common/widgets/button/button.widget.dart';
import '../../../../../common/widgets/conditional-control/rx-conditional-control.widget.dart';
import '../../../../../common/widgets/dropdown/dropdown.widget.dart';
import '../../../../../common/widgets/icon/icon.widget.dart';
import '../../../../../common/widgets/spacers/spacers.widget.dart';
import 'language/language-level.enum.dart';
import 'language/language.model.dart';
import 'languages.controller.dart';

class LanguagesWidget extends GetView<LanguagesController> {
  const LanguagesWidget({super.key});

  @override
  Widget build(BuildContext context) => Obx(
        () => ListView(
          children: <Widget>[
            ...controller.selectedLanguages.map(_buildEditedLanguage),
            RxConditionalControlWidget(
                condition: controller.isEdit,
                child: Padding(
                  padding: EdgeInsets.only(top: Insets.large),
                  child: ButtonWidget(
                      title: 'Add language', onTap: controller.addLanguage),
                ))
          ],
        ),
      );

  Widget _buildEditedLanguage(LanguageModel language) => Row(
        children: <Widget>[
          Flexible(
            flex: 2,
            child: IgnorePointer(
              ignoring: !controller.isEdit.value,
              child: DropdownWidget<String>(
                  value: language.language,
                  items: controller.allLanguages,
                  onChange: (String? value) => controller.isEdit.value
                      ? controller.onLanguageChange(language.id, value)
                      : null),
            ),
          ),
          HSpace.lg,
          const Text('-'),
          HSpace.lg,
          Flexible(
            child: IgnorePointer(
              ignoring: !controller.isEdit.value,
              child: DropdownWidget<LanguageLevel>(
                  value: language.level,
                  items: LanguageLevel.values,
                  onChange: (LanguageLevel? value) => controller.isEdit.value
                      ? controller.onLevelChange(language.id, value)
                      : null),
            ),
          ),
          HSpace.lg,
          RxConditionalControlWidget(
              condition: controller.isEdit,
              child: InkWell(
                onTap: () => controller.deleteLanguage(language.id),
                child: IconWidget(ImageAsset.cross,
                    width: Insets.large, color: Get.context!.themeColors.dark3),
              ))
        ],
      );
}
