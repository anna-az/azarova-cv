// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../../../../common/base/image-asset.dart';
import '../../../../../../common/styles/insets.styles.dart';
import '../../../../../../common/theme/theme.extensions.dart';
import '../../../../../../common/widgets/icon/icon.widget.dart';
import '../../../../../../common/widgets/input/input.widget.dart';
import '../contacts.controller.dart';

class ContactsInputWidget extends GetView<ContactsController> {
  const ContactsInputWidget(this.textController,
      {required this.imageAsset,
      this.copy,
      this.inputFormatters,
      this.keyboardType,
      this.prefixIcon,
      this.validator,
      super.key});
  final TextEditingController textController;
  final ImageAsset imageAsset;
  final VoidCallback? copy;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) => InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        onLongPress: () {
          if (copy != null) {
            copy!.call();
            return;
          }
          controller.copyText(textController.text);
        },
        child: Padding(
          padding: EdgeInsets.only(bottom: Insets.xxl),
          child: Obx(
            () => InputWidget(
                textEditingController: textController,
                enabled: controller.isEdit.value,
                inputFormatters: inputFormatters,
                keyboardType: TextInputType.number,
                prefixIcon: prefixIcon,
                validator: validator,
                icon: IconWidget(
                  imageAsset,
                  color: context.themeColors.primary,
                )),
          ),
        ),
      );
}
