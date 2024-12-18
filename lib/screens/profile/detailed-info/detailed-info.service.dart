// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../common/api/exceptions/allowed.exception.dart';
import '../../../common/dialog/dialog.model.dart';
import '../../../common/dialog/dialog.service.dart';
import '../profile.model.dart';
import '../profile.service.dart';
import 'detailed-info.translation.dart';

class DetailedInfoService extends GetxService {
  DetailedInfoService(ProfileService profileService, this._dialogService)
      : user = profileService.user;
  final DialogService _dialogService;

  final RxBool isEdit = false.obs;
  final ProfileModel user;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  StreamController<Completer<bool>> onSaveController =
      StreamController<Completer<bool>>.broadcast();

  Stream<Completer<bool>> get onSave => onSaveController.stream;

  void _triggerSave({bool isSave = false}) {
    final Completer<bool> completer = Completer<bool>()..complete(isSave);
    onSaveController.add(completer);
  }

  Future<void> handleSave({bool needValidation = false}) async {
    final bool result = await _dialogService.confirm(const DialogModel(
        title: DetailedInfoTranslationNames.popupTitle,
        content: DetailedInfoTranslationNames.popupDescription));

    if (result && needValidation) {
      validateData();
    }
    _triggerSave(isSave: result);
    isEdit.value = !isEdit.value;
  }

  void validateData() {
    if (isEdit.value &&
        formKey.currentState != null &&
        !formKey.currentState!.validate()) {
      throw AllowedException('', showToast: false);
    }
  }
}
