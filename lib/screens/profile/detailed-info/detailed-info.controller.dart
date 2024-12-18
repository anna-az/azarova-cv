// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../profile.model.dart';
import 'detailed-info.service.dart';

class DetailedInfoController extends GetxController {
  DetailedInfoController(this._detailedInfoService)
      : isEdit = _detailedInfoService.isEdit,
        formKey = _detailedInfoService.formKey,
        user = _detailedInfoService.user;
  final DetailedInfoService _detailedInfoService;
  final RxBool isEdit;
  final ProfileModel user;

  final GlobalKey<FormState> formKey;
  Stream<Completer<bool>> get onSave => _detailedInfoService.onSave;

  @override
  void onInit() {
    initData();
    if (_detailedInfoService.onSaveController.isClosed) {
      _detailedInfoService.onSaveController =
          StreamController<Completer<bool>>.broadcast();
    }
    onSave.listen(_handleData);
    super.onInit();
  }

  @override
  void onClose() {
    isEdit.value = false;
    _detailedInfoService.onSaveController.close();
    super.onClose();
  }

  Future<void> changeIsEdit() async {
    _detailedInfoService.validateData();

    if (!isEdit.value) {
      isEdit.value = !isEdit.value;
      return;
    }
    await _detailedInfoService.handleSave();
  }

  Future<void> _handleData(Completer<bool> completer) async {
    final bool saveResult = await completer.future;
    if (saveResult) {
      saveData();
      return;
    }
    initData();
  }

  void saveData() {}
  void initData() {}

  Future<void> onBackTap() async {
    if (isEdit.value) {
      await _detailedInfoService.handleSave(needValidation: true);
    }
    Get.back();
  }
}
