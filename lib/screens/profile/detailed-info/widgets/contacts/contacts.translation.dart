// Project imports:
import '../../../../../common/app-translation/translation.extensions.dart';
import '../../../../../common/map/map.extensions.dart';

enum ContactsTranslationNames implements Translation {
  copy,
}

final Map<String, String> en = <ContactsTranslationNames, String>{
  ContactsTranslationNames.copy: 'Copied to your clipboard!',
}.st;

final Map<String, String> uk = <ContactsTranslationNames, String>{
  ContactsTranslationNames.copy: 'Скопійовано до буфера обміну!',
}.st;
