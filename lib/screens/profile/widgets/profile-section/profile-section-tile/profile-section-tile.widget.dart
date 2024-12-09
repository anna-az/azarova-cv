// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../../../common/base/image-asset.dart';
import '../../../../../common/styles/insets.styles.dart';
import '../../../../../common/styles/text.styles.dart';
import '../../../../../common/theme/theme.extensions.dart';
import '../../../../../common/widgets/divider/divider.widget.dart';
import '../../../../../common/widgets/icon/icon.widget.dart';
import '../../../../../common/widgets/spacers/spacers.widget.dart';

class ProfileSectionTileWidget extends StatelessWidget {
  const ProfileSectionTileWidget(
      {required this.title,
      required this.icon,
      this.onTap,
      this.isLast = false,
      super.key});
  final String title;
  final ImageAsset icon;
  final VoidCallback? onTap;
  final bool isLast;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onTap,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: Insets.large),
              child: Row(
                children: <Widget>[
                  IconWidget(icon,
                      width: Insets.xxl, color: context.themeColors.dark),
                  HSpace.lg,
                  Expanded(
                    child: Text(title,
                        style: const TextStyle().dark2.smallSize.mediumWeight),
                  ),
                ],
              ),
            ),
            if (!isLast) const DividerWidget()
          ],
        ),
      );
}
