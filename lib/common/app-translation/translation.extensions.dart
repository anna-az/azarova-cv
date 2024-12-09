// Package imports:
import 'package:get/get.dart';

abstract class Translation {}

extension Translations on Translation {
  String get st => '$this';
  String get tr => st.tr;
}
