// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../../base/image-asset.dart';
import '../../../../styles/insets.styles.dart';
import '../../../../styles/text.styles.dart';
import '../../../../theme/theme.extensions.dart';
import '../../../icon/icon.widget.dart';
import '../../../spacers/spacers.widget.dart';

class SettingsButtonWidget extends StatelessWidget {
  const SettingsButtonWidget(
      {required this.title,
      required this.icon,
      required this.onTap,
      this.description,
      this.switcherChange,
      super.key});
  final String title;
  final String? description;
  final ImageAsset icon;
  final VoidCallback onTap;
  final Rx<bool>? switcherChange;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Insets.large, vertical: Insets.s),
          child: Row(
            children: <Widget>[
              IconWidget(icon, color: context.themeColors.dark),
              HSpace.med,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(title,
                      style: const TextStyle().dark2.smallSize.mediumWeight),
                  if (description != null)
                    Text(description!,
                        style: const TextStyle()
                            .secondaryText
                            .smallSize
                            .regularWeight),
                ],
              ),
              const Spacer(),
              if (switcherChange != null)
                Obx(
                  () => CupertinoSwitch(
                      value: switcherChange!.value,
                      onChanged: switcherChange!.call,
                      activeTrackColor: context.themeColors.primary),
                ),
            ],
          ),
        ),
      );
}
