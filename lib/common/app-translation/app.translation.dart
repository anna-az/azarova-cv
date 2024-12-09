// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../screens/languages/languages.translations.dart' as language;
import '../../screens/profile/profile.translation.dart' as profile;
import '../../screens/profile/about/about.translation.dart' as about;
import '../../screens/profile/contacts/contacts.translation.dart' as contacts;
import '../../common/widgets/settings/settings.translations.dart' as settings;

class AppTranslation extends GetxService {
  Map<String, Map<String, String>> translationsKeys =
      <String, Map<String, String>>{
    'en': en,
    'uk': uk,
  };

  void _combineTranslations(
      Map<String, String> enTranslations, Map<String, String> ukTranslations) {
    translationsKeys['en']!.addAll(enTranslations);
    translationsKeys['uk']!.addAll(ukTranslations);
  }

  Map<String, Map<String, String>> combineAllTranslations() {
    _combineTranslations(language.en, language.uk);
    _combineTranslations(profile.en, profile.uk);
    _combineTranslations(about.en, about.uk);
    _combineTranslations(contacts.en, contacts.uk);
    _combineTranslations(settings.en, settings.uk);

    return translationsKeys;
  }
}

final Map<String, String> en = <String, String>{};
final Map<String, String> uk = <String, String>{};
