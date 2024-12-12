// Package imports:
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class StoreWebviewController extends GetxController {
  StoreWebviewController();

  late WebViewController webViewController;
  late String? title;

  @override
  void onInit() {
    title = Get.parameters['title'];
    _initController();
    super.onInit();
  }

  void _initController() {
    final String url = Get.parameters['url'] ?? 'http://google.com';
    webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onNavigationRequest: (NavigationRequest request) =>
              NavigationDecision.prevent,
        ),
      )
      ..loadRequest(Uri.parse(url));
  }
}
