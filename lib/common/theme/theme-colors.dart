// Flutter imports:
import 'package:flutter/material.dart';

class ThemeColorsExtension extends ThemeExtension<ThemeColorsExtension> {
  const ThemeColorsExtension({
    required this.primary,
    required this.secondary,
    required this.primaryText,
    required this.secondaryText,
    required this.stroke,
    required this.white,
    required this.dark,
    required this.dark2,
    required this.dark3,
    required this.dark4,
    required this.dark5,
    required this.dark6,
    required this.dark7,
    required this.gray,
    required this.gray2,
    required this.gray3,
    required this.gray4,
    required this.gray5,
    required this.gray6,
    required this.gray7,
    required this.grayWhite,
    required this.red,
    required this.green,
    required this.blue,
    required this.bottomNavigation,
    required this.blueLight,
  });

  final Color primary;
  final Color secondary;
  final Color primaryText;
  final Color secondaryText;
  final Color stroke;
  final Color white;
  final Color dark;
  final Color dark2;
  final Color dark3;
  final Color dark4;
  final Color dark5;
  final Color dark6;
  final Color dark7;
  final Color gray;
  final Color gray2;
  final Color gray3;
  final Color gray4;
  final Color gray5;
  final Color gray6;
  final Color gray7;
  final Color grayWhite;
  final Color red;
  final Color green;
  final Color blue;
  final Color blueLight;
  final Color bottomNavigation;

  @override
  ThemeColorsExtension copyWith({
    Color? primary,
    Color? secondary,
    Color? primaryText,
    Color? secondaryText,
    Color? stroke,
    Color? white,
    Color? dark,
    Color? dark2,
    Color? dark3,
    Color? dark4,
    Color? dark5,
    Color? dark6,
    Color? dark7,
    Color? gray,
    Color? gray2,
    Color? gray3,
    Color? gray4,
    Color? gray5,
    Color? gray6,
    Color? gray7,
    Color? grayWhite,
    Color? red,
    Color? green,
    Color? blue,
    Color? blueLight,
    Color? bottomNavigation,
  }) =>
      ThemeColorsExtension(
          primary: primary ?? this.primary,
          secondary: secondary ?? this.secondary,
          primaryText: primaryText ?? this.primaryText,
          secondaryText: secondaryText ?? this.secondaryText,
          stroke: stroke ?? this.stroke,
          white: white ?? this.white,
          dark: dark ?? this.dark,
          dark2: dark2 ?? this.dark2,
          dark3: dark3 ?? this.dark3,
          dark4: dark4 ?? this.dark4,
          dark5: dark5 ?? this.dark5,
          dark6: dark6 ?? this.dark6,
          dark7: dark7 ?? this.dark7,
          gray: gray ?? this.gray,
          gray2: gray2 ?? this.gray2,
          gray3: gray3 ?? this.gray3,
          gray4: gray4 ?? this.gray4,
          gray5: gray5 ?? this.gray5,
          gray6: gray6 ?? this.gray6,
          gray7: gray7 ?? this.gray7,
          grayWhite: grayWhite ?? this.grayWhite,
          red: red ?? this.red,
          green: green ?? this.green,
          blue: blue ?? this.blue,
          blueLight: blueLight ?? this.blueLight,
          bottomNavigation: bottomNavigation ?? this.bottomNavigation);

  @override
  ThemeColorsExtension lerp(ThemeColorsExtension? other, double t) {
    if (other is! ThemeColorsExtension) {
      return this;
    }
    return ThemeColorsExtension(
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      primaryText: Color.lerp(primaryText, other.primaryText, t)!,
      secondaryText: Color.lerp(secondaryText, other.secondaryText, t)!,
      stroke: Color.lerp(stroke, other.stroke, t)!,
      white: Color.lerp(white, other.white, t)!,
      dark: Color.lerp(dark, other.dark, t)!,
      dark2: Color.lerp(dark2, other.dark2, t)!,
      dark3: Color.lerp(dark3, other.dark3, t)!,
      dark4: Color.lerp(dark4, other.dark4, t)!,
      dark5: Color.lerp(dark5, other.dark5, t)!,
      dark6: Color.lerp(dark6, other.dark6, t)!,
      dark7: Color.lerp(dark7, other.dark7, t)!,
      gray: Color.lerp(gray, other.gray, t)!,
      gray2: Color.lerp(gray2, other.gray2, t)!,
      gray3: Color.lerp(gray3, other.gray3, t)!,
      gray4: Color.lerp(gray4, other.gray4, t)!,
      gray5: Color.lerp(gray5, other.gray5, t)!,
      gray6: Color.lerp(gray6, other.gray6, t)!,
      gray7: Color.lerp(gray7, other.gray7, t)!,
      grayWhite: Color.lerp(grayWhite, other.grayWhite, t)!,
      red: Color.lerp(red, other.red, t)!,
      green: Color.lerp(green, other.green, t)!,
      blue: Color.lerp(blue, other.blue, t)!,
      blueLight: Color.lerp(blueLight, other.blueLight, t)!,
      bottomNavigation:
          Color.lerp(bottomNavigation, other.bottomNavigation, t)!,
    );
  }
}
