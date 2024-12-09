// Flutter imports:
import 'package:flutter/cupertino.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../navigation/navigation.service.dart';

class InputPopupController extends GetxController {
  InputPopupController(this._navigationService);
  final NavigationService _navigationService;

  final TextEditingController textController = TextEditingController(text: '');

  void onSave() => _navigationService.back(result: textController.text);

  void onCancel() => _navigationService.back();
}
