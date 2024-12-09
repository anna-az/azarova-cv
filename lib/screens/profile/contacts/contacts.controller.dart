import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../common/app-translation/translation.extensions.dart';
import '../../../common/widgets/toast/toast.service.dart';
import 'contacts.translation.dart';

class ContactsController extends GetxController {
  ContactsController(this._toastService);
  final ToastService _toastService;
  Future<void> copyText(String text) async {
    await Clipboard.setData(ClipboardData(text: text));
    _toastService.showSuccessToast(ContactsTranslationNames.copy.tr);
  }
}
