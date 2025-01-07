// Project imports:
import '../app-translation/translation.extensions.dart';
import 'date.translation.dart';

extension DateExtensions on DateTime? {
  String get monthYear {
    if (this == null) {
      return DateTranslationNames.present.tr;
    }
    String month = DateTranslationNames.january.tr;
    switch (this!.month) {
      case 1:
        month = DateTranslationNames.january.tr;
        break;
      case 2:
        month = DateTranslationNames.february.tr;
        break;
      case 3:
        month = DateTranslationNames.march.tr;
        break;
      case 4:
        month = DateTranslationNames.april.tr;
        break;
      case 5:
        month = DateTranslationNames.may.tr;
        break;
      case 6:
        month = DateTranslationNames.june.tr;
        break;
      case 7:
        month = DateTranslationNames.july.tr;
        break;
      case 8:
        month = DateTranslationNames.august.tr;
        break;
      case 9:
        month = DateTranslationNames.september.tr;
        break;
      case 10:
        month = DateTranslationNames.october.tr;
        break;
      case 11:
        month = DateTranslationNames.november.tr;
        break;
      case 12:
        month = DateTranslationNames.december.tr;
        break;
    }
    return '$month ${this!.year}';
  }
}
