// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'contacts.controller.dart';

class ContactsBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ContactsController(Get.find()));
  }
}
