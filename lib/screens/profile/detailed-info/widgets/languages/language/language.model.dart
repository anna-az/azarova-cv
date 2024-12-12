// Project imports:
import 'language-level.enum.dart';

class LanguageModel {
  LanguageModel({
    required this.language,
    required this.level,
  });
  String language;
  LanguageLevel level;

  LanguageModel copy() => LanguageModel(
        language: language,
        level: level,
      );
}
