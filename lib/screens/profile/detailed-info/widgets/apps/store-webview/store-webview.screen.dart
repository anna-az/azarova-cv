// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

// Project imports:
import '../../../../../../common/widgets/app-bar/app-bar.widget.dart';
import 'store-webview.controller.dart';

class StoreWebviewScreen extends GetView<StoreWebviewController> {
  const StoreWebviewScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBarWidget(title: controller.title),
        body: WebViewWidget(controller: controller.webViewController),
      );
}
