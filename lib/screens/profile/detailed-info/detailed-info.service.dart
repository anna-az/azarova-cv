// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

class DetailedInfoService extends GetxService {
  final RxBool isEdit = false.obs;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
}
