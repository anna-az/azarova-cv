// Project imports:
import '../../common/app-translation/translation.extensions.dart';
import '../../common/map/map.extensions.dart';

enum AppLanguagesTranslationNames implements Translation {
  en,
  uk,
  language,
  save,
  cancel,
  search
}

final Map<String, String> en = <AppLanguagesTranslationNames, String>{
  AppLanguagesTranslationNames.en: 'English',
  AppLanguagesTranslationNames.uk: 'Ukrainian',
  AppLanguagesTranslationNames.language: 'Language',
  AppLanguagesTranslationNames.save: 'Save',
  AppLanguagesTranslationNames.cancel: 'Cancel',
  AppLanguagesTranslationNames.search: 'Search',
}.st;

final Map<String, String> uk = <AppLanguagesTranslationNames, String>{
  AppLanguagesTranslationNames.en: 'Англійська',
  AppLanguagesTranslationNames.uk: 'Українська',
  AppLanguagesTranslationNames.language: 'Мова',
  AppLanguagesTranslationNames.save: 'Зберегти',
  AppLanguagesTranslationNames.cancel: 'Скасувати',
  AppLanguagesTranslationNames.search: 'Пошук',
}.st;
