// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../common/app-translation/translation.extensions.dart';
import '../../common/styles/insets.styles.dart';
import '../../common/theme/theme.extensions.dart';
import '../../common/widgets/app-bar/app-bar.widget.dart';
import '../../common/widgets/button/button.widget.dart';
import '../../common/widgets/divider/divider.widget.dart';
import '../../common/widgets/spacers/spacers.widget.dart';
import 'app-languages.controller.dart';
import 'app-languages.translations.dart';
import 'widgets/language-button/language-button.widget.dart';
import 'widgets/language-code/language-code.dart';
import 'widgets/language-search/language-search.widget.dart';

class AppLanguagesScreen extends GetView<AppLanguageController> {
  const AppLanguagesScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBarWidget(title: AppLanguagesTranslationNames.language.tr),
        body: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(Insets.large),
                child: const LanguageSearchWidget()),
            const DividerWidget(),
            Obx(
              () => Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(
                      vertical: Insets.regular, horizontal: Insets.large),
                  children: <Widget>[
                    ...controller.languages.map((LanguageCode language) =>
                        LanguageButtonWidget(language: language))
                  ],
                ),
              ),
            ),
            const DividerWidget(),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: Insets.large, horizontal: Insets.xxl),
              child: Row(
                children: <Widget>[
                  ButtonWidget(
                      title: AppLanguagesTranslationNames.save.tr,
                      onTap: controller.onSaveTap),
                  HSpace.xs,
                  ButtonWidget(
                      title: AppLanguagesTranslationNames.cancel.tr,
                      onTap: controller.onCancelTap,
                      color: context.themeColors.white,
                      borderColor: context.themeColors.blue,
                      textColor: context.themeColors.blue),
                ],
              ),
            )
          ],
        ),
      );
}
