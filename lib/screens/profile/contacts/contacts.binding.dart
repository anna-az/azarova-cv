// Package imports:
import 'package:get/get.dart';

import 'contacts.controller.dart';

class ContactsBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ContactsController(Get.find()));
  }
}
