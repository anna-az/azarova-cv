// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../base/image-asset.dart';
import '../../styles/insets.styles.dart';
import '../../styles/text.styles.dart';
import '../../theme/theme.extensions.dart';
import '../icon/icon.widget.dart';
import '../spacers/spacers.widget.dart';
import 'input.controller.dart';
import 'input.validators.dart';

class InputWidget extends StatelessWidget {
  InputWidget(
      {required this.textEditingController,
      this.isObscureText = false,
      this.hint,
      this.title,
      this.validator,
      this.isRequired = false,
      this.keyboardType,
      this.isTextArea = false,
      this.autovalidateMode = AutovalidateMode.disabled,
      this.onChanged,
      this.successMessage,
      this.suffixIcon,
      super.key});
  final TextEditingController textEditingController;
  final bool isObscureText;
  final String? hint;
  final String? title;
  final String? Function(String?)? validator;
  final bool isRequired;
  final bool isTextArea;
  final TextInputType? keyboardType;
  final AutovalidateMode autovalidateMode;
  final void Function(String)? onChanged;
  final Rx<String?>? successMessage;
  final Widget? suffixIcon;

  final String tag = DateTime.now().microsecondsSinceEpoch.toString();

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => InputController(canBeObscured: isObscureText), tag: tag);
    return GetBuilder<InputController>(
        tag: tag,
        builder: (InputController controller) => Obx(() {
              final Color borderColor = successMessage?.value != null
                  ? context.themeColors.green
                  : context.themeColors.stroke;
              return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    if (title != null)
                      Padding(
                          padding: EdgeInsets.only(bottom: Insets.med),
                          child: Text(title!,
                              style: const TextStyle()
                                  .dark
                                  .mediumSize
                                  .mediumWeight)),
                    TextFormField(
                        maxLines: isTextArea ? 6 : 1,
                        autocorrect: false,
                        onChanged: onChanged,
                        obscureText: controller.isObscureText.value,
                        autovalidateMode: autovalidateMode,
                        obscuringCharacter: '*',
                        validator: (String? value) {
                          if (isRequired) {
                            return value.validateIsEmpty() ??
                                validator?.call(value);
                          }
                          return validator?.call(value);
                        },
                        controller: textEditingController,
                        keyboardType:
                            isTextArea ? TextInputType.multiline : keyboardType,
                        decoration: InputDecoration(
                            fillColor: Colors.transparent,
                            isDense: true,
                            prefix: HSpace.xl,
                            contentPadding:
                                EdgeInsets.symmetric(vertical: Insets.regular),
                            suffixIcon: isObscureText
                                ? InkWell(
                                    onTap: controller.changeIsObscureText,
                                    child: Padding(
                                      padding: EdgeInsets.all(Insets.regular),
                                      child: IconWidget(
                                        controller.isObscureText.value
                                            ? ImageAsset.showPassword
                                            : ImageAsset.hidePassword,
                                        height: 16,
                                        color: context.themeColors.dark5,
                                      ),
                                    ),
                                  )
                                : suffixIcon,
                            hintText: hint,
                            hintStyle: const TextStyle()
                                .dark6
                                .mediumSize
                                .regularWeight,
                            errorStyle:
                                const TextStyle().red.smallSize.regularWeight,
                            enabledBorder: _buildBorder(borderColor),
                            focusedBorder: _buildBorder(borderColor),
                            focusedErrorBorder:
                                _buildBorder(context.themeColors.red, width: 2),
                            border: _buildBorder(borderColor))),
                    if (textEditingController.text.isNotEmpty &&
                        successMessage?.value != null)
                      Padding(
                          padding: EdgeInsets.only(top: Insets.sm),
                          child: Text(successMessage!.value!,
                              textAlign: TextAlign.left,
                              style: const TextStyle()
                                  .green
                                  .smallSize
                                  .regularWeight)),
                  ]);
            }));
  }

  OutlineInputBorder _buildBorder(Color color, {double width = 1}) =>
      OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(Insets.regular)),
          borderSide: BorderSide(
            color: color,
            width: width,
          ));
}
