// Dart imports:
import 'dart:convert';
import 'dart:developer';

// Package imports:
import 'package:dio/dio.dart';

class LoggingInterceptor extends InterceptorsWrapper {
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    logRequest(
        'API Request \n METHOD: ${options.method} \n URL: ${options.uri} \n BODY: ${getPrettyJSONString(options.data)}');
    return handler.next(options);
  }

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    logError(
        'API Error \n METHOD: ${err.requestOptions.method} \n URL: ${err.requestOptions.uri} \n CODE: ${err.response?.statusCode} \n BODY: ${getPrettyJSONString(err.response?.data)}');
    return handler.next(err);
  }

  // @override
  // Future<void> onResponse(
  //     Response<dynamic> response, ResponseInterceptorHandler handler) async {
  //   logResponse(
  //       'API Response \n METHOD: ${response.requestOptions.method} \n URL: ${response.requestOptions.uri} \n CODE: ${response.statusCode.toString()} \n BODY: ${getPrettyJSONString(response.data)}');
  //   return handler.next(response);
  // }
}

String getPrettyJSONString(dynamic jsonObject) {
  const JsonEncoder encoder = JsonEncoder.withIndent('  ');
  try {
    return encoder.convert(jsonObject);
  } catch (e) {
    return jsonObject.toString();
  }
}

void logError(String text) => _logWithColor('❌ $text', '\x1B[1;31m');
void logRequest(String text) => _logWithColor('➡️ $text', '\x1B[1;32m');
void logResponse(String text) => _logWithColor('⬅️ $text', '\x1B[38;5;45m');
void logDebug(String text) => _logWithColor(text, '\x1B[1;36m');

void _logWithColor(String text, String colorCode) {
  final List<String> lines = text.split('\n');
  final Iterable<String> coloredLines =
      lines.map((String line) => '$colorCode$line\x1B[0m');
  final String coloredText = coloredLines.join('\n');
  log(coloredText);
}
