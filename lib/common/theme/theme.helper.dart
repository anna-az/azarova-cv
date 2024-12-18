// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../color/colors-set.dart';
import '../color/colors-set.interface.dart';
import 'theme-colors.dart';

mixin ThemeHelper {
  static ThemeData createTheme(IColorsSet colors) => ThemeData(
        brightness:
            colors is ColorsSetLight ? Brightness.light : Brightness.dark,
        fontFamily: 'PTSans',
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        useMaterial3: false,
        scaffoldBackgroundColor: colors.grayWhite,
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: colors.grayWhite,
        ),
        extensions: <ThemeExtension<dynamic>>[
          ThemeColorsExtension(
            primary: colors.primary,
            secondary: colors.secondary,
            primaryText: colors.primaryText,
            secondaryText: colors.secondaryText,
            stroke: colors.stroke,
            white: colors.white,
            dark: colors.dark,
            dark2: colors.dark2,
            dark3: colors.dark3,
            dark4: colors.dark4,
            dark5: colors.dark5,
            dark6: colors.dark6,
            dark7: colors.dark7,
            grayWhite: colors.grayWhite,
            gray: colors.gray,
            gray2: colors.gray2,
            gray3: colors.gray3,
            gray4: colors.gray4,
            gray5: colors.gray5,
            gray6: colors.gray6,
            gray7: colors.gray7,
            red: colors.red,
            green: colors.green,
            blue: colors.blue,
            blueLight: colors.blueLight,
            bottomNavigation: colors.bottomNavigation,
          ),
        ],
      );

  // TODO(xakeppok): why is it static?
  static ThemeData lightTheme = createTheme(ColorsSetLight.instance);
  static ThemeData darkTheme = createTheme(ColorsSetDark.instance);

  static List<ThemeData> values = <ThemeData>[lightTheme, darkTheme];
}
