// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_workers/utils/debouncer.dart';

// Project imports:
import '../../common/navigation/navigation.service.dart';
import '../../common/widgets/settings/settings.service.dart';
import 'languages.service.dart';
import 'widgets/language-code/language-code.dart';

class LanguageController extends GetxController {
  LanguageController(this._languageService, this._navigationService,
      SettingsService settingsService)
      : languages = <LanguageCode>[..._languageService.allLanguages].obs,
        selectedLanguage =
            Rx<LanguageCode>(settingsService.selectedLanguage.value);
  final LanguagesService _languageService;
  final NavigationService _navigationService;

  final Debouncer _searchDebouncer =
      Debouncer(delay: const Duration(milliseconds: 300));

  final RxList<LanguageCode> languages;
  final Rx<LanguageCode> selectedLanguage;

  final TextEditingController languageController = TextEditingController();

  void setLanguage(LanguageCode languageCode) =>
      selectedLanguage.value = languageCode;

  void onCancelTap() => _navigationService.back();

  void onSaveTap() {
    _languageService.saveLanguage(selectedLanguage.value);
    _navigationService.back();
  }

  void search() {
    if (languageController.text.isEmpty) {
      languages.value = _languageService.allLanguages;
      return;
    }
    languages.value =
        _languageService.allLanguages.where((LanguageCode language) {
      final String searchText = languageController.text.toLowerCase();
      return language.translatedTitle.tr.toLowerCase().contains(searchText) ||
          language.title.toLowerCase().contains(searchText);
    }).toList();
  }

  void onSearchChange(String val) => _searchDebouncer.call(search);
}
