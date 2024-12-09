// Project imports:
import '../../../common/app-translation/translation.extensions.dart';
import '../../../common/map/map.extensions.dart';

enum AboutTranslationNames implements Translation {
  title,
  about,
}

final Map<String, String> en = <AboutTranslationNames, String>{
  AboutTranslationNames.title: 'About Me',
  AboutTranslationNames.about:
      'I am a responsible and goal-oriented Flutter Developer with strong self-learning and quick learning abilities. My logical thinking and effective communication skills help me tackle complex challenges and collaborate efficiently within a team. As a team player, I thrive in dynamic environments and am always eager to expand my knowledge and contribute to project success.',
}.st;

final Map<String, String> uk = <AboutTranslationNames, String>{
  AboutTranslationNames.title: 'Про мене',
  AboutTranslationNames.about:
      'Я відповідальний та цілеспрямований Flutter-розробник із сильними здібностями до самонавчання та швидкого навчання. Моє логічне мислення та навички ефективної комунікації допомагають мені вирішувати складні завдання та ефективно співпрацювати в команді. Як командний гравець, я процвітаю в динамічному середовищі і завжди прагну розширити свої знання та зробити внесок в успіх проекту.',
}.st;
