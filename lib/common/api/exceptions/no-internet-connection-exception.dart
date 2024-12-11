// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import '../../app-translation/translation.extensions.dart';
import 'exceptions.translation.dart';

class NoInternetConnectionException extends DioException {
  NoInternetConnectionException(DioException err)
      : super(
            error: err,
            requestOptions: err.requestOptions,
            response: err.response);

  @override
  String toString() => ExceptionTranslationNames.noInternetConnection.tr;
}
