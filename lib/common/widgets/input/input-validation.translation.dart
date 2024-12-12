// Project imports:
import '../../app-translation/translation.extensions.dart';
import '../../map/map.extensions.dart';

enum InputValidationTranslationNames implements Translation {
  fieldIsRequired,
  minLength,
  correctEmail,
  appStore,
  googlePlay,
}

final Map<String, String> en = <InputValidationTranslationNames, String>{
  InputValidationTranslationNames.fieldIsRequired: 'Field is required',
  InputValidationTranslationNames.minLength: 'Minimum symbols count:',
  InputValidationTranslationNames.correctEmail: 'Enter correct email',
  InputValidationTranslationNames.appStore: 'App Store URL is not correct',
  InputValidationTranslationNames.googlePlay: 'Google Play URL is not correct',
}.st;

final Map<String, String> uk = <InputValidationTranslationNames, String>{
  InputValidationTranslationNames.fieldIsRequired: 'Обов\'язкове поле',
  InputValidationTranslationNames.minLength: 'Мінімальна кількість символів:',
  InputValidationTranslationNames.correctEmail:
      'Введіть правильну електронну адресу',
  InputValidationTranslationNames.appStore: 'Неправильна App Store URL-адреса',
  InputValidationTranslationNames.googlePlay: 'Неправильний Google Play ID',
}.st;
