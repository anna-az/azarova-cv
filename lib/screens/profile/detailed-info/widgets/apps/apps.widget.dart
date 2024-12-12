// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../../../common/app-translation/translation.extensions.dart';
import '../../../../../common/base/image-asset.dart';
import '../../../../../common/styles/insets.styles.dart';
import '../../../../../common/styles/text.styles.dart';
import '../../../../../common/theme/theme.extensions.dart';
import '../../../../../common/widgets/button/button.widget.dart';
import '../../../../../common/widgets/conditional-control/rx-conditional-control.widget.dart';
import '../../../../../common/widgets/icon/icon.widget.dart';
import 'app.model.dart';
import 'apps.controller.dart';
import 'apps.translation.dart';
import 'stores/stores.enum.dart';

class AppsWidget extends GetView<AppsController> {
  const AppsWidget({super.key});

  @override
  Widget build(BuildContext context) => Obx(
        () => ListView(
          children: <Widget>[
            ...controller.apps.map(buildTile),
            RxConditionalControlWidget(
                condition: controller.isEdit,
                child: Padding(
                  padding: EdgeInsets.only(top: Insets.xxl),
                  child: ButtonWidget(
                      title: AppsTranslationNames.add.tr,
                      onTap: () => controller.onEditOrAddAppTap(null)),
                ))
          ],
        ),
      );

  Widget buildTile(AppModel store) => Padding(
        padding: EdgeInsets.only(bottom: Insets.large),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(Insets.xl),
                decoration: BoxDecoration(
                    border: Border.all(color: Get.context!.themeColors.primary),
                    borderRadius: BorderRadius.circular(Insets.med)),
                child: Row(
                  children: <Widget>[
                    Text(store.title,
                        style: const TextStyle().dark3.mediumSize.mediumWeight),
                    const Spacer(),
                    if (store.appStoreUrl.isNotEmpty)
                      _buildStoreButton(
                          Store.appStore, store.appStoreUrl, store.title),
                    if (store.googlePlayId.isNotEmpty)
                      _buildStoreButton(
                          Store.googlePlay, store.googlePlayId, store.title),
                  ],
                ),
              ),
            ),
            RxConditionalControlWidget(
                condition: controller.isEdit,
                child: Padding(
                  padding: EdgeInsets.only(left: Insets.large),
                  child: InkWell(
                    onTap: () => controller.onEditOrAddAppTap(store),
                    child: IconWidget(ImageAsset.edit,
                        color: Get.context!.themeColors.dark2),
                  ),
                )),
          ],
        ),
      );

  Widget _buildStoreButton(Store store, String storeUrl, String storageTitle) =>
      Padding(
        padding: EdgeInsets.only(left: Insets.regular),
        child: InkWell(
          onTap: () => controller.openStore(storageTitle, storeUrl, store),
          child: IconWidget(store.image, width: Insets.xxl),
        ),
      );
}
