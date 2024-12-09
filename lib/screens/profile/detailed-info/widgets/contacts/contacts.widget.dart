// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:country_code_picker/country_code_picker.dart';
import 'package:get/get.dart';

// Project imports:
import '../../../../../common/base/image-asset.dart';
import '../../../../../common/styles/text.styles.dart';
import '../../../../../common/widgets/input/input.validators.dart';
import 'contacts-input/contacts-input.widget.dart';
import 'contacts.controller.dart';

class ContactsWidget extends GetView<ContactsController> {
  const ContactsWidget({super.key});

  @override
  Widget build(BuildContext context) => Form(
        key: controller.formKey,
        child: Column(
          children: <Widget>[
            ContactsInputWidget(controller.phoneController,
                imageAsset: ImageAsset.phone,
                copy: controller.onPhoneLongPress,
                validator: (String? value) => value.validateLessThan(),
                inputFormatters: <TextInputFormatter>[controller.maskFormatter],
                keyboardType: TextInputType.number,
                prefixIcon: SizedBox(
                  child: CountryCodePicker(
                      countryList: controller.countryCodes,
                      flagWidth: 15,
                      onChanged: controller.onCodeChanged,
                      initialSelection: 'UA',
                      textStyle:
                          const TextStyle().dark5.mediumSize.regularWeight,
                      showFlagDialog: false),
                )),
            ContactsInputWidget(
              controller.emailController,
              imageAsset: ImageAsset.email,
              validator: (String? value) => value.validateIsEmail(),
            ),
            ContactsInputWidget(controller.locationController,
                imageAsset: ImageAsset.location),
          ],
        ),
      );
}
