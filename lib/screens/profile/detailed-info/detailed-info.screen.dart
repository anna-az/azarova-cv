// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../common/app-translation/translation.extensions.dart';
import '../../../common/base/image-asset.dart';
import '../../../common/styles/insets.styles.dart';
import '../../../common/theme/theme.extensions.dart';
import '../../../common/widgets/app-bar/app-bar.widget.dart';
import '../../../common/widgets/icon/icon.widget.dart';
import '../../../common/widgets/unfocus/unfocus.wrapper.dart';
import 'detailed-info.controller.dart';

class DetailedInfoScreen extends GetView<DetailedInfoController> {
  const DetailedInfoScreen(
      {required this.title, required this.child, super.key});
  final Translation title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => DetailedInfoController(Get.find()));
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, dynamic result) async {
        if (didPop) {
          return;
        }
        await controller.onBackTap();
      },
      child: UnfocusWrapper(
        Scaffold(
            appBar: AppBarWidget(
                title: title.tr,
                actions: <Widget>[
                  InkWell(
                    onTap: controller.changeIsEdit,
                    child: Padding(
                      padding: EdgeInsets.all(Insets.regular),
                      child: Obx(
                        () => IconWidget(
                            controller.isEdit.value
                                ? ImageAsset.cross
                                : ImageAsset.edit,
                            color: context.themeColors.dark2,
                            width: 20),
                      ),
                    ),
                  ),
                ],
                onBackTap: controller.onBackTap),
            body: Padding(padding: EdgeInsets.all(Insets.xxl), child: child)),
      ),
    );
  }
}
