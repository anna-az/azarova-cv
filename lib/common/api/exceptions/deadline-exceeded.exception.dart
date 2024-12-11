// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import '../../app-translation/translation.extensions.dart';
import 'exceptions.translation.dart';

class DeadlineExceededException extends DioException {
  DeadlineExceededException(DioException err)
      : super(
            error: err,
            requestOptions: err.requestOptions,
            response: err.response);

  @override
  String toString() => ExceptionTranslationNames.deadlineExceeded.tr;
}
