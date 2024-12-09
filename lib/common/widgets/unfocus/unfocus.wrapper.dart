// Flutter imports:
import 'package:flutter/material.dart';

class UnfocusWrapper extends StatelessWidget {
  const UnfocusWrapper(this.child, {super.key});
  final Widget child;
  @override
  Widget build(BuildContext context) => GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(), child: child);
}
