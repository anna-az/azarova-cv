// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../screens/languages/widgets/language-code/language-code.dart';
import '../../base/routes.dart';
import '../../navigation/navigation.service.dart';
import 'settings.service.dart';
import 'widgets/settings-drawer/settings-drawer.service.dart';

class SettingsController extends GetxController {
  SettingsController(SettingsService settingsService, this._navigationService,
      this._settingsDrawerService)
      : selectedLanguage = settingsService.selectedLanguage,
        isDarkTheme = settingsService.isDarkTheme;
  final NavigationService _navigationService;
  final SettingsDrawerService _settingsDrawerService;

  final RxBool isDarkTheme;
  final Rx<LanguageCode> selectedLanguage;

  void openLanguagesScreen() {
    closeDrawer();
    _navigationService.to(AppRoutes.language);
  }

  void setTheme() => isDarkTheme.value = !isDarkTheme.value;

  void closeDrawer() => _settingsDrawerService.closeDrawer();
}
