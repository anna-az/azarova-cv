// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'detailed-info.service.dart';

class DetailedInfoController extends GetxController {
  DetailedInfoController(DetailedInfoService detailedInfoService)
      : isEdit = detailedInfoService.isEdit;

  final RxBool isEdit;
  void changeIsEdit() => isEdit.value = !isEdit.value;
  void onBackTap() => isEdit.value = false;
}
