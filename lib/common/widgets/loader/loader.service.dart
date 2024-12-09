// Package imports:
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';

class LoaderService extends GetxService {
  void showLoading() => Get.context?.loaderOverlay.show();

  void hideLoading() => Get.context?.loaderOverlay.hide();
}
