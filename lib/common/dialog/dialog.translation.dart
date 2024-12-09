// Project imports:
import '../app-translation/translation.extensions.dart';
import '../map/map.extensions.dart';

enum DialogTranslationNames implements Translation {
  cancel,
  confirm,
}

final Map<String, String> en = <DialogTranslationNames, String>{
  DialogTranslationNames.cancel: 'Cancel',
  DialogTranslationNames.confirm: 'Yes'
}.st;

final Map<String, String> ru = <DialogTranslationNames, String>{
  DialogTranslationNames.cancel: 'Отмена',
  DialogTranslationNames.confirm: 'Да'
}.st;

final Map<String, String> uk = <DialogTranslationNames, String>{
  DialogTranslationNames.cancel: 'Скасувати',
  DialogTranslationNames.confirm: 'Так'
}.st;
