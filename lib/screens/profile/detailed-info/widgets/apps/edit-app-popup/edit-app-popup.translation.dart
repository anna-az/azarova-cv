// Project imports:

// Project imports:
import '../../../../../../common/app-translation/translation.extensions.dart';
import '../../../../../../common/map/map.extensions.dart';

enum EditAppPopupTranslationNames implements Translation {
  appName,
  save,
  cancel,
  atLeastOneStore,
}

final Map<String, String> en = <EditAppPopupTranslationNames, String>{
  EditAppPopupTranslationNames.appName: 'App name',
  EditAppPopupTranslationNames.save: 'Save',
  EditAppPopupTranslationNames.cancel: 'Cancel',
  EditAppPopupTranslationNames.atLeastOneStore:
      'You must specify at least one store',
}.st;

final Map<String, String> uk = <EditAppPopupTranslationNames, String>{
  EditAppPopupTranslationNames.appName: 'Назва додатку',
  EditAppPopupTranslationNames.save: 'Зберегти',
  EditAppPopupTranslationNames.cancel: 'Скасувати',
  EditAppPopupTranslationNames.atLeastOneStore:
      'Ви повинні вказати принаймні один магазин',
}.st;
