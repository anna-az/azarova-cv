// Project imports:
import '../../app-translation/translation.extensions.dart';
import '../../map/map.extensions.dart';

enum InputValidationTranslationNames implements Translation {
  fieldIsRequired,
}

final Map<String, String> en = <InputValidationTranslationNames, String>{
  InputValidationTranslationNames.fieldIsRequired: 'Field is required',
}.st;

final Map<String, String> uk = <InputValidationTranslationNames, String>{
  InputValidationTranslationNames.fieldIsRequired: 'Обов\'язкове поле',
}.st;
