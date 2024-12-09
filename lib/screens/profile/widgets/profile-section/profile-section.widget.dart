// Flutter imports:
import 'package:flutter/widgets.dart';

// Package imports:
import 'package:collection/collection.dart';

// Project imports:
import '../../../../common/styles/insets.styles.dart';
import '../../../../common/theme/theme.extensions.dart';
import 'profile-section-tile/profile-section-tile.widget.dart';

class ProfileSectionWidget extends StatelessWidget {
  const ProfileSectionWidget({required this.children, super.key});
  final List<ProfileSectionTileWidget> children;

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.symmetric(horizontal: Insets.large),
        decoration: BoxDecoration(
            color: context.themeColors.gray2,
            borderRadius: BorderRadius.circular(Insets.regular)),
        child: Column(
          children: children
              .mapIndexed((int index, ProfileSectionTileWidget child) =>
                  ProfileSectionTileWidget(
                    title: child.title,
                    icon: child.icon,
                    onTap: child.onTap,
                    isLast: index == children.length - 1,
                  ))
              .toList(),
        ),
      );
}
