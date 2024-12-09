// Project imports:

// Project imports:
import '../../app-translation/translation.extensions.dart';
import '../../map/map.extensions.dart';

enum ConfirmPopupTranslationNames implements Translation {
  cancel,
  confirm,
  save,
}

final Map<String, String> en = <ConfirmPopupTranslationNames, String>{
  ConfirmPopupTranslationNames.cancel: 'Cancel',
  ConfirmPopupTranslationNames.confirm: 'Yes',
  ConfirmPopupTranslationNames.save: 'Save',
}.st;

final Map<String, String> uk = <ConfirmPopupTranslationNames, String>{
  ConfirmPopupTranslationNames.cancel: 'Скасувати',
  ConfirmPopupTranslationNames.confirm: 'Так',
  ConfirmPopupTranslationNames.save: 'Зберегти',
}.st;
