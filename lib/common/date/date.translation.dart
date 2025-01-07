// Project imports:

// Project imports:
import '../../../../../../common/app-translation/translation.extensions.dart';
import '../../../../../../common/map/map.extensions.dart';

enum DateTranslationNames implements Translation {
  present,
  january,
  february,
  march,
  april,
  may,
  june,
  july,
  august,
  september,
  october,
  november,
  december,
}

final Map<String, String> en = <DateTranslationNames, String>{
  DateTranslationNames.present: 'Present',
  DateTranslationNames.january: 'January',
  DateTranslationNames.february: 'February',
  DateTranslationNames.march: 'March',
  DateTranslationNames.april: 'April',
  DateTranslationNames.may: 'May',
  DateTranslationNames.june: 'June',
  DateTranslationNames.july: 'July',
  DateTranslationNames.august: 'August',
  DateTranslationNames.september: 'September',
  DateTranslationNames.october: 'October',
  DateTranslationNames.november: 'November',
  DateTranslationNames.december: 'December',
}.st;

final Map<String, String> uk = <DateTranslationNames, String>{
  DateTranslationNames.present: 'Теперішній час',
  DateTranslationNames.january: 'Січень',
  DateTranslationNames.february: 'Лютий',
  DateTranslationNames.march: 'Березень',
  DateTranslationNames.april: 'Квітень',
  DateTranslationNames.may: 'Травень',
  DateTranslationNames.june: 'Червень',
  DateTranslationNames.july: 'Липень',
  DateTranslationNames.august: 'Серпень',
  DateTranslationNames.september: 'Вересень',
  DateTranslationNames.october: 'Жовтень',
  DateTranslationNames.november: 'Листопад',
  DateTranslationNames.december: 'Грудень',
}.st;
