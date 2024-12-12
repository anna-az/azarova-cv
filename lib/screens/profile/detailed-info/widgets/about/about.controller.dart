// Flutter imports:
import 'package:flutter/cupertino.dart';

// Project imports:
import '../../detailed-info.controller.dart';

class AboutController extends DetailedInfoController {
  AboutController(super.detailedInfoService);

  final TextEditingController aboutController = TextEditingController(text: '');

  @override
  void onInit() {
    aboutController.text = user.about;
    super.onInit();
  }
}
