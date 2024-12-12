// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../detailed-info.controller.dart';
import 'language/language-level.enum.dart';
import 'language/language.model.dart';
import 'languages.service.dart';

class LanguagesController extends DetailedInfoController {
  LanguagesController(super.detailedInfoService, this._languagesService);
  final LanguagesService _languagesService;

  final RxList<String> allLanguages = <String>[].obs;

  final RxList<LanguageModel> selectedLanguages = <LanguageModel>[].obs;

  @override
  void onInit() {
    getLanguages();
    selectedLanguages.value = user.languages
        .map((LanguageModel language) => language.copy())
        .toList();
    if (allLanguages.isEmpty) {}
    super.onInit();
  }

  Future<void> getLanguages() async {
    if (_languagesService.allLanguages.isNotEmpty) {
      allLanguages.value = _languagesService.allLanguages;
      return;
    }
    try {
      _languagesService.allLanguages = await _languagesService.getLanguages();
      allLanguages.value = _languagesService.allLanguages;
    } catch (_) {
      allLanguages.value = user.languages
          .map((LanguageModel language) => language.language)
          .toList();
    }

    selectedLanguages.refresh();
  }

  void onLanguageChange(int index, String? language) {
    if (language != null) {
      selectedLanguages[index].language = language;
    }
    selectedLanguages.refresh();
  }

  void onLevelChange(int index, LanguageLevel? level) {
    if (level != null) {
      selectedLanguages[index].level = level;
    }
    selectedLanguages.refresh();
  }

  void deleteLanguage(LanguageModel language) {
    selectedLanguages.remove(language);
  }

  void addLanguage() {
    selectedLanguages
        .add(LanguageModel(language: 'English', level: LanguageLevel.b2));
  }
}
