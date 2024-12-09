// Project imports:
import '../../../../common/app-translation/translation.extensions.dart';
import '../../languages.translations.dart';

enum LanguageCode {
  us('us', 'English', LanguagesTranslationNames.en),
  uk('uk', 'Українська', LanguagesTranslationNames.uk);

  const LanguageCode(this.code, this.title, this.translationKey);

  final String code;
  final String title;
  final LanguagesTranslationNames translationKey;

  static final Map<String, LanguageCode> _languageCodeMap =
      <String, LanguageCode>{
    for (LanguageCode lang in LanguageCode.values) lang.code: lang,
  };

  static LanguageCode fromString(String languageCode) =>
      _languageCodeMap[languageCode] ?? LanguageCode.us;

  String get translatedTitle => translationKey.tr;
}
