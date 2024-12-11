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

  final RxList<String> allLanguages =
      <String>['English', 'Ukrainian', 'Russian'].obs;

  final RxList<LanguageModel> selectedLanguages = <LanguageModel>[
    LanguageModel(language: 'English', level: LanguageLevel.b2),
    LanguageModel(language: 'Ukrainian', level: LanguageLevel.c2),
    LanguageModel(language: 'Russian', level: LanguageLevel.c2),
  ].obs;

  @override
  void onInit() {
    ever(isEdit, (bool value) {
      if (isEdit.value && allLanguages.length <= 3) {
        getLanguages();
      }
    });
    super.onInit();
  }

  Future<void> getLanguages() async {
    allLanguages.value = await _languagesService.getLanguages();
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
