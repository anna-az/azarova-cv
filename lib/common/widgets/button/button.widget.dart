// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../styles/insets.styles.dart';
import '../../styles/text.styles.dart';
import '../../theme/theme.extensions.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {required this.title,
      required this.onTap,
      this.enabled = true,
      this.color,
      this.textColor,
      this.borderColor,
      super.key});
  final String title;
  final void Function() onTap;
  final bool enabled;
  final Color? color;
  final Color? textColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) => InkWell(
      onTap: () {
        if (!enabled) {
          return;
        }
        onTap();
      },
      child: Container(
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: Insets.xxl),
          decoration: BoxDecoration(
              color: (color ?? context.themeColors.primary)
                  .withOpacity(enabled ? 1 : 0.3),
              border: Border.all(
                  color: borderColor ?? color ?? context.themeColors.primary),
              borderRadius: BorderRadius.circular(14)),
          child: Center(
              child: Text(title,
                  style: const TextStyle()
                      .setColor(textColor ?? context.themeColors.white)
                      .mediumSize
                      .mediumWeight))));
}
