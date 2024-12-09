// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../app-translation/translation.extensions.dart';
import 'input-validation.translation.dart';

extension InputValidators on String? {
  String? validateIsEmpty() {
    if (GetUtils.isBlank(this)!) {
      return InputValidationTranslationNames.fieldIsRequired.tr;
    }
    return null;
  }
}
