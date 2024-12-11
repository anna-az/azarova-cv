// Package imports:
import 'package:dio/dio.dart';

class ApiRequestModel {
  const ApiRequestModel(
      {required this.prefix,
      this.path = '',
      this.query,
      this.body,
      this.successToastText,
      this.needLoading = true,
      this.showErrorToaster = true,
      this.customBody,
      this.formData});
  final String prefix;
  final String? path;
  final Map<String, dynamic>? query;
  final Map<String, dynamic>? body;
  final String? successToastText;
  final bool needLoading;
  final bool showErrorToaster;
  final FormData? formData;
  final dynamic customBody;
}
