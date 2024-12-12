// Project imports:
import 'phone/phone.model.dart';

class ContactsModel {
  ContactsModel(
      {required this.phone, required this.email, required this.location});
  PhoneModel phone;
  String email;
  String location;
}
