// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

class RxConditionalControlWidget extends StatelessWidget {
  const RxConditionalControlWidget(
      {required this.condition, required this.child, super.key});
  final Rx<bool?> condition;
  final Widget child;

  @override
  Widget build(BuildContext context) => Obx(() {
        if (condition.value == true) {
          return child;
        }
        return const SizedBox();
      });
}
