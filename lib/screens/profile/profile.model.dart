// Project imports:
import 'detailed-info/widgets/apps/app.model.dart';
import 'detailed-info/widgets/contacts/contacts.model.dart';
import 'detailed-info/widgets/languages/language/language.model.dart';

class ProfileModel {
  ProfileModel({
    required this.avatar,
    required this.firstName,
    required this.lastName,
    required this.about,
    required this.contacts,
    required this.skills,
    required this.languages,
    required this.apps,
  });
  String avatar;
  String firstName;
  String lastName;
  String about;
  ContactsModel contacts;
  List<String> skills;
  List<LanguageModel> languages;
  List<AppModel> apps;
}
