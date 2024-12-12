// Project imports:
import '../../../common/app-translation/translation.extensions.dart';
import '../../../common/map/map.extensions.dart';

enum ProfileTranslationNames implements Translation {
  name,
  position,
  about,
  contacts,
  title,
  skills,
  languages,
  stores,
  work,
  education,
}

final Map<String, String> en = <ProfileTranslationNames, String>{
  ProfileTranslationNames.name: 'Anna Azarova',
  ProfileTranslationNames.position: 'Flutter Developer',
  ProfileTranslationNames.about: 'About',
  ProfileTranslationNames.contacts: 'Contacts',
  ProfileTranslationNames.title: 'Profile',
  ProfileTranslationNames.skills: 'Skills',
  ProfileTranslationNames.languages: 'Languages',
  ProfileTranslationNames.stores: 'Apps in stores',
  ProfileTranslationNames.work: 'Professional experience',
  ProfileTranslationNames.education: 'Education',
}.st;

final Map<String, String> uk = <ProfileTranslationNames, String>{
  ProfileTranslationNames.name: 'Анна Азарова',
  ProfileTranslationNames.position: 'Розробник Flutter',
  ProfileTranslationNames.about: 'Про мене',
  ProfileTranslationNames.contacts: 'Контакти',
  ProfileTranslationNames.title: 'Профайл',
  ProfileTranslationNames.skills: 'Навички',
  ProfileTranslationNames.languages: 'Мови',
  ProfileTranslationNames.stores: 'Додатки в магазинах',
  ProfileTranslationNames.work: 'Професійний досвід',
  ProfileTranslationNames.education: 'Освіта',
}.st;
