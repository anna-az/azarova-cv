// Flutter imports:
import 'package:flutter/cupertino.dart';

// Project imports:
import '../../../../../common/hive/hive.boxes.dart';
import '../../detailed-info.controller.dart';

class AboutController extends DetailedInfoController {
  AboutController(super.detailedInfoService);

  final TextEditingController aboutController = TextEditingController(text: '');

  @override
  HiveBoxes box = HiveBoxes.about;
  // @override
  // void saveData() => saveToDatabase<String>(aboutController.text);
  // @override
  // void saveData() => user.about = aboutController.text;
  @override
  void initData() => aboutController.text = user.about;
}
