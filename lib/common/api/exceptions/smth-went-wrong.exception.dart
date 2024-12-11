// Project imports:
import '../../app-translation/translation.extensions.dart';
import 'allowed.exception.dart';
import 'exceptions.translation.dart';

class SmthWentWrongException extends AllowedException {
  SmthWentWrongException() : super(ExceptionTranslationNames.smthWentWrong.tr);
}
