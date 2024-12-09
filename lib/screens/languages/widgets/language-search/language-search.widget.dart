// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../../common/app-translation/translation.extensions.dart';
import '../../../../common/base/image-asset.dart';
import '../../../../common/styles/insets.styles.dart';
import '../../../../common/theme/theme.extensions.dart';
import '../../../../common/widgets/icon/icon.widget.dart';
import '../../../../common/widgets/input/input.widget.dart';
import '../../languages.controller.dart';
import '../../languages.translations.dart';

class LanguageSearchWidget extends GetView<LanguageController> {
  const LanguageSearchWidget({super.key});

  @override
  Widget build(BuildContext context) => InputWidget(
      textEditingController: controller.languageController,
      onChanged: controller.onSearchChange,
      hint: LanguagesTranslationNames.search.tr,
      suffixIcon: InkWell(
        onTap: controller.search,
        child: Container(
          width: Insets.regular,
          alignment: Alignment.center,
          child: IconWidget(ImageAsset.search,
              color: context.themeColors.dark5,
              width: Insets.regular,
              fit: BoxFit.scaleDown),
        ),
      ));
}
