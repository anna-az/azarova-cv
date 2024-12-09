// Flutter imports:
import 'package:flutter/material.dart';

class ConditionalControlWidget extends StatelessWidget {
  const ConditionalControlWidget(
      {required this.condition, required this.child, super.key});
  final bool condition;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    if (condition) {
      return child;
    }
    return const SizedBox();
  }
}
