// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../../common/base/image-asset.dart';
import '../../../../common/styles/insets.styles.dart';
import '../../../../common/styles/text.styles.dart';
import '../../../../common/theme/theme.extensions.dart';
import '../../../../common/widgets/icon/icon.widget.dart';
import '../../languages.controller.dart';
import '../language-code/language-code.dart';

class LanguageButtonWidget extends GetView<LanguageController> {
  const LanguageButtonWidget({required this.language, super.key});
  final LanguageCode language;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () => controller.setLanguage(language),
        child: Obx(
          () {
            final bool isActive = language == controller.selectedLanguage.value;
            return Container(
              padding: EdgeInsets.symmetric(
                  vertical: Insets.large, horizontal: Insets.xxl),
              decoration: BoxDecoration(
                  color:
                      isActive ? context.themeColors.gray2 : Colors.transparent,
                  borderRadius: BorderRadius.circular(Insets.regular)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(language.translatedTitle,
                          style:
                              const TextStyle().dark2.smallSize.mediumWeight),
                      Text(language.title,
                          style: const TextStyle()
                              .secondaryText
                              .smallSize
                              .regularWeight),
                    ],
                  ),
                  IconWidget(ImageAsset.check,
                      color: isActive
                          ? context.themeColors.blue
                          : Colors.transparent)
                ],
              ),
            );
          },
        ),
      );
}
