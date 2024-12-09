// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'colors-set.interface.dart';

enum ColorsSetLight implements IColorsSet {
  instance;

  @override
  Color get primary => const Color(0xff5475E5);
  @override
  Color get secondary => const Color(0xffF2C14B);
  @override
  Color get primaryText => const Color(0xff667380);
  @override
  Color get secondaryText => const Color(0xff8B98A6);
  @override
  Color get stroke => const Color(0xffE0E4E9);
  @override
  Color get white => const Color(0xffFFFFFF);
  @override
  Color get dark => const Color(0xff111928);
  @override
  Color get dark2 => const Color(0xff1F2A37);
  @override
  Color get dark3 => const Color(0xff374151);
  @override
  Color get dark4 => const Color(0xff4B5563);
  @override
  Color get dark5 => const Color(0xff6B7280);
  @override
  Color get dark6 => const Color(0xff9CA3AF);
  @override
  Color get dark7 => const Color(0xffD1D5DB);
  @override
  Color get grayWhite => const Color(0xffFFFFFF);
  @override
  Color get gray => const Color(0xffF9FAFB);
  @override
  Color get gray2 => const Color(0xffF3F4F6);
  @override
  Color get gray3 => const Color(0xffE5E7EB);
  @override
  Color get gray4 => const Color(0xffDEE2E6);
  @override
  Color get gray5 => const Color(0xffCED4DA);
  @override
  Color get gray6 => const Color(0xffCED4DA);
  @override
  Color get gray7 => const Color(0xffCED4DA);
  @override
  Color get red => const Color(0xffF23030);
  @override
  Color get green => const Color(0xff22AD5C);
  @override
  Color get blue => const Color(0xff5475E5);
  @override
  Color get blueLight => const Color(0xffC3CEF6);
  @override
  Color get bottomNavigation => const Color(0xffe1e8ff);
}

enum ColorsSetDark implements IColorsSet {
  instance;

  @override
  Color get primary => const Color(0xff2D68F8);
  @override
  Color get secondary => const Color(0xff02AAA4);
  @override
  Color get primaryText => const Color(0xffD1D5DB);
  @override
  Color get secondaryText => const Color(0xff9CA3AF);
  @override
  Color get stroke => const Color(0xff1F2A37);
  @override
  Color get white => const Color(0xffFFFFFF);
  @override
  Color get dark => const Color(0xffF9FAFB);
  @override
  Color get dark2 => const Color(0xffF3F4F6);
  @override
  Color get dark3 => const Color(0xffE5E7EB);
  @override
  Color get dark4 => const Color(0xffDEE2E6);
  @override
  Color get dark5 => const Color(0xffCED4DA);
  @override
  Color get dark6 => const Color(0xffCED4DA);
  @override
  Color get dark7 => const Color(0xffCED4DA);
  @override
  Color get grayWhite => const Color(0xff111928);
  @override
  Color get gray => const Color(0xff111928);
  @override
  Color get gray2 => const Color(0xff1F2A37);
  @override
  Color get gray3 => const Color(0xff374151);
  @override
  Color get gray4 => const Color(0xff4B5563);
  @override
  Color get gray5 => const Color(0xff6B7280);
  @override
  Color get gray6 => const Color(0xff9CA3AF);
  @override
  Color get gray7 => const Color(0xffE5E7EB);
  @override
  Color get red => const Color(0xffF23030);
  @override
  Color get green => const Color(0xff22AD5C);
  @override
  Color get blue => const Color(0xff5475E5);
  @override
  Color get blueLight => const Color(0xffC3CEF6);
  @override
  Color get bottomNavigation => primary;
}
