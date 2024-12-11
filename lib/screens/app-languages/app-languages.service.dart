// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../common/widgets/settings/settings.service.dart';
import 'widgets/language-code/language-code.dart';

class AppLanguagesService extends GetxService {
  AppLanguagesService(this._settingsService);
  final SettingsService _settingsService;

  final List<LanguageCode> allLanguages = <LanguageCode>[
    LanguageCode.us,
    LanguageCode.uk,
  ];

  void saveLanguage(LanguageCode language) {
    _settingsService.setLanguage(language);
  }
}
