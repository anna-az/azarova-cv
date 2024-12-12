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

  String? validateLessThan({int length = 13}) {
    if (this != null && this!.length <= length) {
      return '${InputValidationTranslationNames.minLength.tr} $length';
    }
    return null;
  }

  String? validateIsEmail({bool isRequired = true}) {
    if (this != null && !GetUtils.isBlank(this)! && !GetUtils.isEmail(this!)) {
      return InputValidationTranslationNames.correctEmail.tr;
    }
    return null;
  }

  String? validateIsGooglePlayId({bool isRequired = true}) {
    if (this != null && !GetUtils.isBlank(this)!) {
      final RegExp regex =
          RegExp(r'^[a-zA-Z0-9_]+\.[a-zA-Z0-9_]+\.[a-zA-Z0-9_]+$');
      if (!regex.hasMatch(this!)) {
        return InputValidationTranslationNames.googlePlay.tr;
      }
    }
    return null;
  }

  String? validateIsAppStoreURL({bool isRequired = true}) {
    if (this != null && !GetUtils.isBlank(this)!) {
      final RegExp regex = RegExp(r'^[a-zA-Z0-9\-]+\/id\d{10}$');

      if (!regex.hasMatch(this!)) {
        return InputValidationTranslationNames.appStore.tr;
      }
    }
    return null;
  }
}
