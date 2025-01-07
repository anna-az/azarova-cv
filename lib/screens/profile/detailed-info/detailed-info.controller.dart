// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../common/hive/hive.boxes.dart';
import '../../../common/json-serializable/json-serializable-with-id.interface.dart';
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
  HiveBoxes box = HiveBoxes.about;

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

  int generateNewId<T extends IJsonSerializableWithId>(List<T> items) =>
      items.isNotEmpty
          ? (items
                  .map((T item) => item.id)
                  .reduce((int a, int b) => a > b ? a : b) +
              1)
          : 1;

  Future<void> onBackTap() async {
    if (isEdit.value) {
      await _detailedInfoService.handleSave(needValidation: true);
    }
    Get.back();
  }
}
