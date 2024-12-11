// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import '../../app-translation/translation.extensions.dart';
import 'exceptions.translation.dart';

class DioErrorException extends DioException {
  DioErrorException(DioException err, this.errorMessage)
      : super(
            error: err,
            requestOptions: err.requestOptions,
            response: err.response);
  final String? errorMessage;

  @override
  String toString() =>
      errorMessage ?? ExceptionTranslationNames.smthWentWrong.tr;
}
