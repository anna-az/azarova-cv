// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'contacts.controller.dart';
import 'contacts.service.dart';

class ContactsBinding implements Bindings {
  @override
  void dependencies() {
    Get
      ..lazyPut(ContactsService.new)
      ..put(ContactsController(Get.find(), Get.find(), Get.find()));
  }
}
