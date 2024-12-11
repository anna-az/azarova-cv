// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../common/api/exceptions/exceptions.translation.dart' as exceptions;
import '../../common/widgets/settings/settings.translations.dart' as settings;
import '../../screens/profile/profile.translation.dart' as profile;
import '../widgets/popups/popup.translation.dart' as popup;

import '../../screens/app-languages/app-languages.translations.dart'
    as app_languages;

import '../../common/widgets/input/input-validation.translation.dart'
    as input_validation;

import '../../screens/profile/detailed-info/widgets/contacts/contacts.translation.dart'
    as contacts;
import '../../screens/profile/detailed-info/widgets/skills/skills.translation.dart'
    as skills;

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
    _combineTranslations(app_languages.en, app_languages.uk);
    _combineTranslations(exceptions.en, exceptions.uk);
    _combineTranslations(profile.en, profile.uk);
    _combineTranslations(contacts.en, contacts.uk);
    _combineTranslations(skills.en, skills.uk);
    _combineTranslations(settings.en, settings.uk);
    _combineTranslations(input_validation.en, input_validation.uk);
    _combineTranslations(popup.en, popup.uk);

    return translationsKeys;
  }
}

final Map<String, String> en = <String, String>{};
final Map<String, String> uk = <String, String>{};
