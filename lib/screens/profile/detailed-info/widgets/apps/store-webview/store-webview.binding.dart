// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'store-webview.controller.dart';

class StoreWebviewBinding implements Bindings {
  StoreWebviewBinding();
  @override
  void dependencies() {
    Get.put(StoreWebviewController());
  }
}
