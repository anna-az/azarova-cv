// Project imports:
import '../../app-translation/translation.extensions.dart';
import '../../map/map.extensions.dart';

enum SettingsTranslationNames implements Translation {
  language,
  themeTitle,
  themeDescription,
  settings
}

final Map<String, String> en = <SettingsTranslationNames, String>{
  SettingsTranslationNames.language: 'Language',
  SettingsTranslationNames.themeTitle: 'Dark Theme',
  SettingsTranslationNames.themeDescription: 'Apply a dark theme',
  SettingsTranslationNames.settings: 'Settings',
}.st;

final Map<String, String> uk = <SettingsTranslationNames, String>{
  SettingsTranslationNames.language: 'Мова',
  SettingsTranslationNames.themeTitle: 'Темна тема',
  SettingsTranslationNames.themeDescription: 'Застосувати темну тему',
  SettingsTranslationNames.settings: 'Налаштування',
}.st;
