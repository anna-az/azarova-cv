// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../../../common/base/image-asset.dart';
import '../../../../../common/styles/insets.styles.dart';
import '../../../../../common/styles/text.styles.dart';
import '../../../../../common/theme/theme-colors.dart';
import '../../../../../common/theme/theme.extensions.dart';
import '../../../../../common/widgets/conditional-control/rx-conditional-control.widget.dart';
import '../../../../../common/widgets/icon/icon.widget.dart';
import 'skills.controller.dart';

class SkillsWidget extends GetView<SkillsController> {
  const SkillsWidget({super.key});

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            Obx(
              () => Wrap(
                children: <Widget>[
                  ...controller.skills.map(_buildSkill),
                  RxConditionalControlWidget(
                    condition: controller.isEdit,
                    child: _buildSkill('+', isAdd: true),
                  )
                ],
              ),
            ),
          ],
        ),
      );

  Widget _buildSkill(String skill, {bool isAdd = false}) {
    final ThemeColorsExtension themeColors = Get.context!.themeColors;
    return Stack(
      children: <Widget>[
        InkWell(
          onTap: () {
            if (isAdd) {
              controller.addSkill();
            }
          },
          child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: Insets.sm, vertical: Insets.s),
              constraints: const BoxConstraints(minWidth: 40),
              padding: EdgeInsets.all(Insets.sm),
              decoration: BoxDecoration(
                  color: isAdd ? themeColors.secondary : themeColors.blue,
                  borderRadius: BorderRadius.circular(Insets.large)),
              child: Text(skill,
                  textAlign: TextAlign.center,
                  style: const TextStyle().stroke.mediumSize.regularWeight)),
        ),
        if (!isAdd)
          RxConditionalControlWidget(
              condition: controller.isEdit,
              child: Positioned(
                  right: 0,
                  top: 0,
                  child: InkWell(
                    onTap: () => controller.deleteSkill(skill),
                    child: Container(
                      padding: EdgeInsets.all(Insets.s),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: themeColors.secondary),
                      child: IconWidget(
                        ImageAsset.cross,
                        width: Insets.regular,
                        color: themeColors.grayWhite,
                      ),
                    ),
                  ))),
      ],
    );
  }
}
