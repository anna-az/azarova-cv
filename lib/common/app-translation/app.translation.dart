// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../common/api/exceptions/exceptions.translation.dart' as exceptions;
import '../../common/date/date.translation.dart' as date;
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
import '../../screens/profile/detailed-info/widgets/apps/apps.translation.dart'
    as apps;
import '../../screens/profile/detailed-info/widgets/apps/edit-app-popup/edit-app-popup.translation.dart'
    as edit_app;
import '../../screens/profile/detailed-info/detailed-info.translation.dart'
    as detailed_info;

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
    _combineTranslations(apps.en, apps.uk);
    _combineTranslations(edit_app.en, edit_app.uk);
    _combineTranslations(detailed_info.en, detailed_info.uk);
    _combineTranslations(date.en, date.uk);
    return translationsKeys;
  }
}

final Map<String, String> en = <String, String>{};
final Map<String, String> uk = <String, String>{};
