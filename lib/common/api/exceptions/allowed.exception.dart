// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../widgets/toast/toast.service.dart';

class AllowedException implements Exception {
  AllowedException(this.message, {this.showToast = true}) {
    if (showToast) {
      Get.find<ToastService>().showErrorToast(message);
    }
  }
  final String message;
  final bool showToast;
}
