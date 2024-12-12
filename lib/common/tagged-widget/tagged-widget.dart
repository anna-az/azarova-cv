// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'unique/unique.mixin.dart';

class TaggedWidget<T extends GetxController> extends StatelessWidget
    with UniqueMixin {
  TaggedWidget(
      {required this.builder,
      required this.controllerBuilder,
      required this.prefixTag,
      this.customTag,
      super.key});

  final String prefixTag;
  final String? customTag;
  final Widget Function(T) builder;
  final T Function() controllerBuilder;

  late final String tag = '${prefixTag}_${customTag ?? generateUniqueId()}';

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(controllerBuilder, tag: tag);
    return GetBuilder<T>(tag: tag, builder: builder);
  }
}
