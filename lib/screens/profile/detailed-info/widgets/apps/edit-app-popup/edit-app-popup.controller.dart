// Flutter imports:
import 'package:flutter/widgets.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../../../../common/api/exceptions/allowed.exception.dart';
import '../../../../../../common/app-translation/translation.extensions.dart';
import '../../../../../../common/navigation/navigation.service.dart';
import '../app.model.dart';
import 'edit-app-popup.translation.dart';

class EditAppController extends GetxController {
  EditAppController(this._navigationService, {required this.app});
  final NavigationService _navigationService;
  final AppModel? app;

  final TextEditingController appNameController =
      TextEditingController(text: '');
  final TextEditingController googlePlayController =
      TextEditingController(text: '');
  final TextEditingController appStoreController =
      TextEditingController(text: '');

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void onInit() {
    if (app != null) {
      appNameController.text = app!.title;
      googlePlayController.text = app!.googlePlayId;
      appStoreController.text = app!.appStoreUrl;
    }
    super.onInit();
  }

  void onSaveTap() {
    if (!formKey.currentState!.validate()) {
      return;
    }
    if (googlePlayController.text.isEmpty && appStoreController.text.isEmpty) {
      throw AllowedException(EditAppPopupTranslationNames.atLeastOneStore.tr);
    }
    _navigationService.back(
        result: AppModel(
            title: appNameController.text,
            appStoreUrl: appStoreController.text,
            googlePlayId: googlePlayController.text));
  }

  void onCancelTap() {
    _navigationService.back();
  }
}
