// Dart imports:
import 'dart:async';
import 'dart:io';

// Package imports:
import 'package:dio/dio.dart';
import 'package:get/get.dart';

// Project imports:
import '../exceptions/deadline-exceeded.exception.dart';
import '../exceptions/dio-error.exception.dart';
import '../exceptions/no-internet-connection-exception.dart';
import '../exceptions/server-error.exception.dart';

class ErrorInterceptor extends Interceptor {
  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    DioException? error;
    error = await _handleDioErrors(err);
    return handler.next(error ?? err);
  }

  Future<DioException?> _handleDioErrors(DioException err) async {
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.badCertificate:
      case DioExceptionType.connectionError:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return DeadlineExceededException(err);
      case DioExceptionType.badResponse:
        try {
          final String? errorType = err.response?.data['localeKey'];
          return DioErrorException(err, errorType?.tr);
        } catch (_) {
          return DioErrorException(err, null);
        }
      case DioExceptionType.unknown:
        final bool isConnectionSuccessful = await _tryConnection();
        if (!isConnectionSuccessful) {
          return NoInternetConnectionException(err);
        }
        return ServerErrorException(err);
      default:
        return ServerErrorException(err);
    }
  }

  Future<bool> _tryConnection() async {
    try {
      final List<InternetAddress> result =
          await InternetAddress.lookup('google.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }
}
