// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../screens/languages/widgets/language-code/language-code.dart';
import '../../shared-preferences/shared-preferences.constants.dart';
import '../../shared-preferences/shared-preferences.service.dart';
import '../../theme/theme.helper.dart';

class SettingsService extends GetxService {
  SettingsService(this._sharedPreferencesService);
  final SharedPreferencesService _sharedPreferencesService;

  final Rx<LanguageCode> selectedLanguage = LanguageCode.us.obs;
  final RxBool isDarkTheme = false.obs;

  @override
  void onInit() {
    ever(isDarkTheme, (bool value) => switchTheme(isDark: value));
    _setBaseSettings();
    super.onInit();
  }

  Future<bool?> _isDarkThemeSelected() =>
      _sharedPreferencesService.getData(SharedPreferencesConstants.theme.value);

  Future<String?> _getSelectedLanguage() => _sharedPreferencesService
      .getData(SharedPreferencesConstants.language.value);

  void switchTheme({required bool isDark}) {
    final ThemeData changedTheme =
        isDark ? ThemeHelper.darkTheme : ThemeHelper.lightTheme;
    saveTheme(changedTheme);
  }

  Future<void> saveTheme(ThemeData themeData, {bool isDefault = false}) async {
    Get.changeTheme(themeData);
    if (!isDefault) {
      final bool isDarkMode = themeData == ThemeHelper.darkTheme;
      await _sharedPreferencesService.saveData(
          SharedPreferencesConstants.theme.value, isDarkMode);
    }
  }

  Future<void> setLanguage(LanguageCode languageCode,
      {bool isDefault = false}) async {
    if (!isDefault) {
      await Get.updateLocale(Locale(languageCode.code));
      await _sharedPreferencesService.saveData(
          SharedPreferencesConstants.language.value, languageCode.code);
    }
    selectedLanguage.value = languageCode;
  }

  void _setBaseSettings() {
    _setTheme();
    _setLanguage();
  }

  Future<void> _setTheme() async {
    final Brightness brightness =
        SchedulerBinding.instance.platformDispatcher.platformBrightness;
    final bool isDarkMode = brightness == Brightness.dark;
    final bool? isDarkThemeSelected = await _isDarkThemeSelected();
    isDarkTheme.value = isDarkThemeSelected ?? isDarkMode;
    final ThemeData selectedTheme =
        isDarkTheme.value ? ThemeHelper.darkTheme : ThemeHelper.lightTheme;
    await saveTheme(selectedTheme, isDefault: isDarkThemeSelected == null);
  }

  Future<void> _setLanguage() async {
    final String? language = await _getSelectedLanguage();
    await setLanguage(
        LanguageCode.fromString(language ?? Get.locale!.languageCode),
        isDefault: language == null);
  }
}
