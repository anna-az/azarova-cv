// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'theme-colors.dart';

extension ThemeColorsX on BuildContext {
  ThemeColorsExtension get themeColors =>
      Theme.of(this).extension<ThemeColorsExtension>()!;
}
