// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../screens/profile/detailed-info/widgets/languages/language/language-level.enum.dart';
import '../../base/image-asset.dart';
import '../../styles/insets.styles.dart';
import '../../styles/text.styles.dart';
import '../icon/icon.widget.dart';

class DropdownWidget<T> extends StatelessWidget {
  const DropdownWidget(
      {required this.value,
      required this.onChange,
      required this.items,
      this.validator,
      super.key});
  final T value;
  final void Function(T?) onChange;
  final List<T> items;
  final FormFieldValidator<T>? validator;

  @override
  Widget build(BuildContext context) => DropdownButton<T>(
        elevation: 2,
        value: value,
        menuWidth: 200,
        isExpanded: true,
        items: items.map((T item) => _buildDropdownItem<T>(item)).toList(),
        onChanged: onChange,
        underline: const SizedBox(),
        icon: Padding(
          padding: EdgeInsets.only(left: Insets.xs),
          child: const IconWidget(ImageAsset.dropdownArrow),
        ),
      );

  DropdownMenuItem<U> _buildDropdownItem<U>(U item) {
    Widget title = const SizedBox();
    if (item is String) {
      title = Text(item, style: const TextStyle().dark3);
    }
    if (item is LanguageLevel) {
      title = Text(item.text, style: const TextStyle().dark3);
    }
    return DropdownMenuItem<U>(
      value: item,
      child: title,
    );
  }
}
