// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../base/image-asset.dart';
import '../../styles/insets.styles.dart';
import '../../styles/text.styles.dart';
import '../../tagged-widget/tagged-widget.dart';
import '../../theme/theme.extensions.dart';
import '../icon/icon.widget.dart';
import '../spacers/spacers.widget.dart';
import 'input.controller.dart';
import 'input.validators.dart';

class InputWidget extends StatelessWidget {
  InputWidget(
      {required this.textEditingController,
      this.isObscureText = false,
      this.title,
      this.hint,
      this.validator,
      this.isRequired = false,
      this.keyboardType,
      this.isTextArea = false,
      this.enabled = true,
      this.inputFormatters,
      this.autovalidateMode = AutovalidateMode.disabled,
      this.onChanged,
      this.suffixIcon,
      this.prefixIcon,
      this.icon,
      super.key});
  final TextEditingController textEditingController;
  final bool isObscureText;
  final String? title;
  final String? hint;
  final String? Function(String?)? validator;
  final bool isRequired;
  final bool isTextArea;
  final bool enabled;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final AutovalidateMode autovalidateMode;
  final void Function(String)? onChanged;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Widget? icon;

  final String tag = DateTime.now().microsecondsSinceEpoch.toString();

  @override
  Widget build(BuildContext context) => TaggedWidget<InputController>(
      controllerBuilder: () => InputController(canBeObscured: isObscureText),
      prefixTag: 'Input',
      builder: (InputController controller) => Obx(() => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                if (title != null)
                  Padding(
                      padding: EdgeInsets.only(bottom: Insets.med),
                      child: Text(
                        title!,
                        style: const TextStyle().dark.mediumSize.mediumWeight,
                      )),
                TextFormField(
                    maxLines: isTextArea ? 6 : 1,
                    autocorrect: false,
                    enabled: enabled,
                    onChanged: onChanged,
                    obscureText: controller.isObscureText.value,
                    autovalidateMode: autovalidateMode,
                    inputFormatters: inputFormatters,
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
                        icon: icon,
                        prefixIcon: prefixIcon,
                        fillColor: Colors.transparent,
                        isDense: true,
                        prefix: prefixIcon == null ? HSpace.xl : null,
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
                                    height: Insets.large,
                                    color: context.themeColors.dark5,
                                  ),
                                ),
                              )
                            : suffixIcon,
                        hintText: hint,
                        hintStyle:
                            const TextStyle().dark6.mediumSize.regularWeight,
                        errorStyle:
                            const TextStyle().red.smallSize.regularWeight,
                        enabledBorder: _buildBorder(context.themeColors.stroke),
                        focusedBorder:
                            _buildBorder(context.themeColors.primary),
                        focusedErrorBorder:
                            _buildBorder(context.themeColors.red, width: 2),
                        border: _buildBorder(context.themeColors.stroke))),
              ])));

  OutlineInputBorder _buildBorder(Color color, {double width = 1}) =>
      OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(Insets.regular)),
          borderSide: BorderSide(
            color: color,
            width: width,
          ));
}
