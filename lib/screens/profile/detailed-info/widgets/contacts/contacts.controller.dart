// Flutter imports:
import 'package:flutter/services.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../../../common/app-translation/translation.extensions.dart';
import '../../../../../common/widgets/toast/toast.service.dart';
import 'contacts.translation.dart';

class ContactsController extends GetxController {
  ContactsController(this._toastService);
  final ToastService _toastService;
  Future<void> copyText(String text) async {
    await Clipboard.setData(ClipboardData(text: text));
    _toastService.showSuccessToast(ContactsTranslationNames.copy.tr);
  }
}
