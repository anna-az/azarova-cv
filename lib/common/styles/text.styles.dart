// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../theme/theme.extensions.dart';

extension TextStyleHelpers on TextStyle {
  // Font weight
  TextStyle get boldWeight => copyWith(fontWeight: FontWeightSet.bold.value);
  TextStyle get semiBoldWeight =>
      copyWith(fontWeight: FontWeightSet.semiBold.value);
  TextStyle get mediumWeight =>
      copyWith(fontWeight: FontWeightSet.medium.value);
  TextStyle get regularWeight =>
      copyWith(fontWeight: FontWeightSet.regular.value);

  // Font color
  TextStyle get primary => TextStyle(color: Get.context?.themeColors.primary);
  TextStyle get secondary =>
      TextStyle(color: Get.context?.themeColors.secondary);
  TextStyle get primaryText =>
      TextStyle(color: Get.context?.themeColors.primaryText);
  TextStyle get secondaryText =>
      TextStyle(color: Get.context?.themeColors.secondaryText);
  TextStyle get stroke => TextStyle(color: Get.context?.themeColors.stroke);
  TextStyle get white => TextStyle(color: Get.context?.themeColors.white);
  TextStyle get dark => TextStyle(color: Get.context?.themeColors.dark);
  TextStyle get dark2 => TextStyle(color: Get.context?.themeColors.dark2);
  TextStyle get dark3 => TextStyle(color: Get.context?.themeColors.dark3);
  TextStyle get dark4 => TextStyle(color: Get.context?.themeColors.dark4);
  TextStyle get dark5 => TextStyle(color: Get.context?.themeColors.dark5);
  TextStyle get dark6 => TextStyle(color: Get.context?.themeColors.dark6);
  TextStyle get dark7 => TextStyle(color: Get.context?.themeColors.dark7);
  TextStyle get grayWhite =>
      TextStyle(color: Get.context?.themeColors.grayWhite);
  TextStyle get gray => TextStyle(color: Get.context?.themeColors.gray);
  TextStyle get gray2 => TextStyle(color: Get.context?.themeColors.gray2);
  TextStyle get gray3 => TextStyle(color: Get.context?.themeColors.gray3);
  TextStyle get gray4 => TextStyle(color: Get.context?.themeColors.gray4);
  TextStyle get gray5 => TextStyle(color: Get.context?.themeColors.gray5);
  TextStyle get gray6 => TextStyle(color: Get.context?.themeColors.gray6);
  TextStyle get gray7 => TextStyle(color: Get.context?.themeColors.gray7);
  TextStyle get red => TextStyle(color: Get.context?.themeColors.red);
  TextStyle get green => TextStyle(color: Get.context?.themeColors.green);
  TextStyle get blue => TextStyle(color: Get.context?.themeColors.blue);

  TextStyle setColor(Color? color) => TextStyle(color: color);

  // Font size
  TextStyle get extraSmallSize =>
      copyWith(fontSize: FontSize.extraSmallText.value);
  TextStyle get extraSmallDescriptionSize =>
      copyWith(fontSize: FontSize.extraSmallDescription.value);
  TextStyle get mediumSize => copyWith(fontSize: FontSize.medium.value);
  TextStyle get smallSize => copyWith(fontSize: FontSize.small.value);
  TextStyle get largeSize => copyWith(fontSize: FontSize.large.value);
  TextStyle get h1 => copyWith(fontSize: FontSize.h1.value);
  TextStyle get h2 => copyWith(fontSize: FontSize.h2.value);
  TextStyle get h3 => copyWith(fontSize: FontSize.h3.value);
  TextStyle get h4 => copyWith(fontSize: FontSize.h4.value);
  TextStyle get h5 => copyWith(fontSize: FontSize.h5.value);
  TextStyle get h6 => copyWith(fontSize: FontSize.h6.value);
}

enum FontSize {
  h1(60),
  h2(48),
  h3(40),
  h4(30),
  h5(28),
  h6(24),
  large(18),
  medium(16),
  small(14),
  extraSmallText(12),
  extraSmallDescription(10);

  const FontSize(this.value);
  final double value;
}

enum FontWeightSet {
  regular(FontWeight.w400),
  medium(FontWeight.w500),
  semiBold(FontWeight.w600),
  bold(FontWeight.w700);

  const FontWeightSet(this.value);
  final FontWeight value;
}
