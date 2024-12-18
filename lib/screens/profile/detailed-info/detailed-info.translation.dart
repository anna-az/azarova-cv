// Project imports:
import '../../../../../common/app-translation/translation.extensions.dart';
import '../../../../../common/map/map.extensions.dart';

enum DetailedInfoTranslationNames implements Translation {
  popupTitle,
  popupDescription,
}

final Map<String, String> en = <DetailedInfoTranslationNames, String>{
  DetailedInfoTranslationNames.popupTitle: 'Save changes',
  DetailedInfoTranslationNames.popupDescription:
      'Do you want to save the changes?',
}.st;

final Map<String, String> uk = <DetailedInfoTranslationNames, String>{
  DetailedInfoTranslationNames.popupTitle: 'Зберегти зміни',
  DetailedInfoTranslationNames.popupDescription: 'Бажаєте зберегти зміни?',
}.st;
