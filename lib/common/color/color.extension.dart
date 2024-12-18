// Flutter imports:
import 'package:flutter/material.dart';

extension ColorExtensions on Color {
  Color setOpacity(double opacity) => withValues(alpha: opacity);
}
