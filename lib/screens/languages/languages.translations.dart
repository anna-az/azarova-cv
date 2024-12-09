// Project imports:
import '../../common/app-translation/translation.extensions.dart';
import '../../common/map/map.extensions.dart';

enum LanguagesTranslationNames implements Translation {
  en,
  uk,
  language,
  save,
  cancel,
  search
}

final Map<String, String> en = <LanguagesTranslationNames, String>{
  LanguagesTranslationNames.en: 'English',
  LanguagesTranslationNames.uk: 'Ukrainian',
  LanguagesTranslationNames.language: 'Language',
  LanguagesTranslationNames.save: 'Save',
  LanguagesTranslationNames.cancel: 'Cancel',
  LanguagesTranslationNames.search: 'Search',
}.st;

final Map<String, String> uk = <LanguagesTranslationNames, String>{
  LanguagesTranslationNames.en: 'Англійська',
  LanguagesTranslationNames.uk: 'Українська',
  LanguagesTranslationNames.language: 'Мова',
  LanguagesTranslationNames.save: 'Зберегти',
  LanguagesTranslationNames.cancel: 'Скасувати',
  LanguagesTranslationNames.search: 'Пошук',
}.st;
