// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../../../../common/app-translation/translation.extensions.dart';
import '../../../../../../common/base/image-asset.dart';
import '../../../../../../common/styles/insets.styles.dart';
import '../../../../../../common/theme/theme.extensions.dart';
import '../../../../../../common/widgets/button/button.widget.dart';
import '../../../../../../common/widgets/icon/icon.widget.dart';
import '../../../../../../common/widgets/input/input.validators.dart';
import '../../../../../../common/widgets/input/input.widget.dart';
import '../../../../../../common/widgets/spacers/spacers.widget.dart';
import '../app.model.dart';
import 'edit-app-popup.controller.dart';
import 'edit-app-popup.translation.dart';

class EditAppPopupWidget extends GetView<EditAppController> {
  const EditAppPopupWidget(this.app, {super.key});
  final AppModel? app;

  @override
  Widget build(BuildContext context) {
    Get.put(EditAppController(Get.find(), app: app));
    return Dialog(
      insetPadding: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Insets.xxl),
              topRight: Radius.circular(Insets.xxl))),
      child: GetBuilder<EditAppController>(
        builder: (EditAppController controller) => Form(
          key: controller.formKey,
          child: ListView(
            padding: EdgeInsets.all(Insets.xxl),
            children: <Widget>[
              InputWidget(
                title: EditAppPopupTranslationNames.appName.tr,
                hint: EditAppPopupTranslationNames.appName.tr,
                textEditingController: controller.appNameController,
                isRequired: true,
              ),
              VSpace(Insets.large),
              InputWidget(
                title: 'App Store URL',
                hint: 'app-name/id1234567890',
                textEditingController: controller.appStoreController,
                validator: (String? value) => value.validateIsAppStoreURL(),
                icon: IconWidget(ImageAsset.appStore, width: Insets.xxl),
              ),
              VSpace(Insets.large),
              InputWidget(
                title: 'Google Play ID',
                hint: 'prod.app_name.id',
                textEditingController: controller.googlePlayController,
                validator: (String? value) => value.validateIsGooglePlayId(),
                icon: IconWidget(ImageAsset.googlePlay, width: Insets.xxl),
              ),
              VSpace(Insets.xxl),
              Row(
                children: <Widget>[
                  Expanded(
                      child: ButtonWidget(
                          title: EditAppPopupTranslationNames.cancel.tr,
                          onTap: controller.onCancelTap,
                          color: context.themeColors.gray2,
                          textColor: context.themeColors.blue)),
                  HSpace.med,
                  Expanded(
                    child: ButtonWidget(
                        title: EditAppPopupTranslationNames.save.tr,
                        onTap: controller.onSaveTap),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
