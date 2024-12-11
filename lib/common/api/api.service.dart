// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:dio/dio.dart';
import 'package:get/get.dart' as g;

// Project imports:
import '../widgets/loader/loader.service.dart';
import '../widgets/toast/toast.service.dart';
import 'api-request/api-request.model.dart';
import 'exceptions/allowed.exception.dart';
import 'interceptors/error-interceptor.dart';
import 'interceptors/log-interceptor.dart';

class ApiService extends g.GetxService {
  ApiService(this._loaderService, this._toastService) {
    init();
  }
  final ToastService _toastService;
  final LoaderService _loaderService;
  final Dio dioClient = Dio(BaseOptions(
    receiveTimeout: const Duration(seconds: 10000),
    connectTimeout: const Duration(seconds: 10000),
    sendTimeout: const Duration(seconds: 10000),
  ));

  Future<void> init() async {
    if (kDebugMode) {
      dioClient.interceptors.add(LoggingInterceptor());
    }
    dioClient.interceptors.add(ErrorInterceptor());
  }

  Future<T> post<T>(ApiRequestModel apiRequestModel) =>
      request<T>(apiRequestModel, method: NetMethod.post);

  Future<T> get<T>(ApiRequestModel apiRequestModel) =>
      request<T>(apiRequestModel, method: NetMethod.get);

  Future<T> patch<T>(ApiRequestModel apiRequestModel) =>
      request<T>(apiRequestModel, method: NetMethod.patch);

  Future<T> request<T>(ApiRequestModel apiRequestModel,
      {required NetMethod method}) async {
    try {
      if (apiRequestModel.needLoading) {
        _loaderService.showLoading();
      }
      final Response<T> response = await dioClient.request<T>(
        '/${apiRequestModel.prefix}/${apiRequestModel.path}',
        queryParameters: apiRequestModel.query,
        data: apiRequestModel.customBody ??
            apiRequestModel.formData ??
            apiRequestModel.body,
        options: Options(method: netMethodValues[method]),
      );
      if (apiRequestModel.successToastText != null) {
        _toastService.showSuccessToast(apiRequestModel.successToastText!);
      }
      return response.data as T;
    } on FormatException catch (_) {
      throw const FormatException('Unable to process data');
    } catch (error, stack) {
      if (kDebugMode) {
        print('error in baseApiCall ${error.runtimeType}');
        print('----------------MY ERROR----------------');
        print(error);
        print('\n$stack');
        print('----------------------------------------------------');
      }
      throw AllowedException(error.toString(),
          showToast: apiRequestModel.showErrorToaster);
    } finally {
      if (apiRequestModel.needLoading) {
        _loaderService.hideLoading();
      }
    }
  }

  String get baseUrl => dioClient.options.baseUrl;

  void setBaseUrl(String value) {
    dioClient.options.baseUrl = value;
  }

  final Map<NetMethod, String> netMethodValues = <NetMethod, String>{
    NetMethod.get: 'get',
    NetMethod.post: 'post',
    NetMethod.delete: 'delete',
    NetMethod.put: 'put',
    NetMethod.patch: 'patch'
  };
}

enum NetMethod { get, post, delete, put, patch }
