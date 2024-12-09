// Package imports:
import 'package:get/get.dart';

class InputController extends GetxController {
  InputController({bool canBeObscured = false}) {
    isObscureText.value = canBeObscured;
  }
  final RxBool isObscureText = false.obs;

  void changeIsObscureText() => isObscureText.value = !isObscureText.value;
}
