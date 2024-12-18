// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../base/image-asset.dart';
import '../../styles/insets.styles.dart';
import '../../styles/text.styles.dart';
import '../../theme/theme.extensions.dart';
import '../icon/icon.widget.dart';
import 'app-bar.controller.dart';

class AppBarWidget extends GetView<AppBarController>
    implements PreferredSizeWidget {
  const AppBarWidget(
      {this.title,
      this.needBackButton = true,
      this.actions,
      this.onBackTap,
      super.key});
  final String? title;
  final bool needBackButton;
  final List<Widget>? actions;
  final VoidCallback? onBackTap;

  @override
  Widget build(BuildContext context) => SafeArea(
        child: AppBar(
          title: title != null
              ? Text(title!,
                  style: const TextStyle().dark3.largeSize.mediumWeight)
              : null,
          centerTitle: true,
          backgroundColor: context.themeColors.gray,
          leading: needBackButton
              ? _buildBackButton()
              : IconButton(
                  icon: Icon(Icons.menu, color: context.themeColors.dark2),
                  onPressed: controller.openDrawer),
          actions: actions,
        ),
      );

  Widget _buildBackButton() => InkWell(
        onTap: () {
          if (onBackTap != null) {
            onBackTap!.call();
            return;
          }
          controller.onBackTap();
        },
        child: IconWidget(
          ImageAsset.back,
          color: Get.context?.themeColors.dark,
          width: Insets.large,
          fit: BoxFit.scaleDown,
        ),
      );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
