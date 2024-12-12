// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:country_code_picker/country_code_picker.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

// Project imports:
import '../../../../../common/app-translation/translation.extensions.dart';
import '../../../../../common/widgets/toast/toast.service.dart';
import '../../detailed-info.controller.dart';
import 'contacts.translation.dart';

class ContactsController extends DetailedInfoController {
  ContactsController(super.detailedInfoService, this._toastService);
  final ToastService _toastService;

  List<Map<String, String>> countryCodes = <Map<String, String>>[];

  String code = '+38';
  String countryCode = 'UA';

  final TextEditingController phoneController = TextEditingController(text: '');
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController locationController =
      TextEditingController(text: '');

  final MaskTextInputFormatter maskFormatter = MaskTextInputFormatter(
      initialText: '(099) 321-1181',
      mask: '(###) ###-####',
      filter: <String, RegExp>{'#': RegExp(r'[0-9]')});

  @override
  void onInit() {
    phoneController.text = user.contacts.phone.phone;
    emailController.text = user.contacts.email;
    locationController.text = user.contacts.location;
    countryCode = user.contacts.phone.countyCode;
    countryCodes = <Map<String, String>>[
      ...const CountryCodePicker().countryList.map(Map<String, String>.from),
    ];

    final Map<String, String> ukraineCode = countryCodes
        .firstWhere((Map<String, String> item) => item['code'] == 'UA');
    ukraineCode['dial_code'] = code;

    super.onInit();
  }

  void onCodeChanged(CountryCode countryCode) {
    code = countryCode.dialCode ?? '+38';
    code = countryCode.code ?? 'UA';
  }

  void onPhoneLongPress() {
    copyText('$code${phoneController.text}');
  }

  Future<void> copyText(String text) async {
    await Clipboard.setData(ClipboardData(text: text));
    _toastService.showSuccessToast(ContactsTranslationNames.copy.tr);
  }
}
