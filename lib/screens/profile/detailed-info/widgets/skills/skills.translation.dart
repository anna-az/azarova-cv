// Project imports:
import '../../../../../common/app-translation/translation.extensions.dart';
import '../../../../../common/map/map.extensions.dart';

enum SkillsTranslationNames implements Translation {
  title,
  delete,
  deleteContent,
  add,
  addContent,
}

final Map<String, String> en = <SkillsTranslationNames, String>{
  SkillsTranslationNames.title: 'Skills',
  SkillsTranslationNames.delete: 'Delete skill',
  SkillsTranslationNames.deleteContent:
      'Are you sure you want to delete a skill?',
  SkillsTranslationNames.add: 'Add skill',
  SkillsTranslationNames.addContent: 'What skill do you want to add?',
}.st;

final Map<String, String> uk = <SkillsTranslationNames, String>{
  SkillsTranslationNames.title: 'Навички',
  SkillsTranslationNames.delete: 'Видалити навичку',
  SkillsTranslationNames.deleteContent:
      'Ви впевнені, що хочете видалити навичку?',
  SkillsTranslationNames.add: 'Додати навичку',
  SkillsTranslationNames.addContent: 'Яку навичку ви хочете додати?',
}.st;
