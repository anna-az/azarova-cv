// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../../../common/base/initial-vaules.dart';
import '../../detailed-info.controller.dart';
import 'language/language-level.enum.dart';
import 'language/language.model.dart';
import 'languages-cache.service.dart';
import 'languages.service.dart';

class LanguagesController extends DetailedInfoController {
  LanguagesController(super.detailedInfoService, this._languagesService,
      this._languagesCacheService);
  final LanguagesService _languagesService;
  final LanguagesCacheService _languagesCacheService;

  final RxList<String> allLanguages = <String>[].obs;

  final RxList<LanguageModel> selectedLanguages = <LanguageModel>[].obs;

  @override
  void onInit() {
    if (allLanguages.isEmpty) {
      getLanguages();
    }
    super.onInit();
  }

  @override
  void saveData() => _languagesCacheService.cacheList(selectedLanguages);

  @override
  void initData() {
    selectedLanguages.value = _languagesCacheService.items.isNotEmpty
        ? _languagesCacheService.items
        : InitialValues.languages;
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

  void onLanguageChange(int id, String? language) {
    if (language == null) {
      return;
    }
    selectedLanguages
        .firstWhere((LanguageModel item) => item.id == id)
        .language = language;
    selectedLanguages.refresh();
  }

  void onLevelChange(int id, LanguageLevel? level) {
    if (level == null) {
      return;
    }
    selectedLanguages.firstWhere((LanguageModel item) => item.id == id).level =
        level;
    selectedLanguages.refresh();
  }

  void deleteLanguage(int id) {
    selectedLanguages
        .removeWhere((LanguageModel language) => language.id == id);
  }

  void addLanguage() {
    final int newId = generateNewId(selectedLanguages);
    selectedLanguages.add(
        LanguageModel(id: newId, language: 'English', level: LanguageLevel.b2));
  }
}
