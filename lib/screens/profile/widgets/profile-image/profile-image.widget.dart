import 'package:flutter/widgets.dart';

import '../../../../common/styles/insets.styles.dart';
import '../../../../common/theme/theme.extensions.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({super.key});

  @override
  Widget build(BuildContext context) => Container(
        height: 120,
        width: 120,
        margin: EdgeInsets.only(right: Insets.s),
        decoration: BoxDecoration(
            color: context.themeColors.gray2, shape: BoxShape.circle),
      );
}
