// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../theme/theme.extensions.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({this.color, super.key});
  final Color? color;

  @override
  Widget build(BuildContext context) => Divider(
      thickness: 1, color: color ?? context.themeColors.gray3, height: 1);
}
