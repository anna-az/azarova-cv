// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:dio/dio.dart';
import 'package:get/get.dart' as g;

// Project imports:
import 'api-request/api-request.model.dart';
import 'api.service.dart';

class ApiRequestOptions {
  ApiRequestOptions(
      {this.body,
      this.query,
      this.customBody,
      this.successToastText,
      this.needLoading = true,
      this.showErrorToaster = true,
      this.formData});

  final Map<String, dynamic>? body;
  final Map<String, dynamic>? query;
  final String? successToastText;
  final bool needLoading;
  final bool showErrorToaster;
  final Object? customBody;
  final FormData? formData;
}

abstract class ApiServiceBase extends g.GetxService {
  ApiServiceBase(this.apiService);
  @protected
  final ApiService apiService;
  String get prefix;

  ApiRequestModel createApiRequestModel({
    String path = '',
    String? overridePrefix,
    ApiRequestOptions? options,
  }) =>
      ApiRequestModel(
        prefix: overridePrefix ?? prefix,
        path: path,
        body: options?.body,
        customBody: options?.customBody,
        query: options?.query,
        successToastText: options?.successToastText,
        needLoading: options?.needLoading ?? true,
        showErrorToaster: options?.showErrorToaster ?? true,
        formData: options?.formData,
      );
}
