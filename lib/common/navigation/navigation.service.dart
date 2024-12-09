// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../base/routes.dart';

class NavigationService extends GetxService {
  Future<dynamic>? to(
    AppRoutes route, {
    dynamic arguments,
    Map<String, String?>? params,
  }) {
    final String url = _generateUrl(route, params);
    return Get.toNamed(url, arguments: arguments);
  }

  void back<T>({T? result}) => Get.back<T>(result: result);

  Future<dynamic>? off(
    AppRoutes route, {
    dynamic arguments,
    Map<String, String?>? params,
  }) {
    final String url = _generateUrl(route, params);
    return Get.offAndToNamed(url, arguments: arguments);
  }

  Future<dynamic>? offAll(
    AppRoutes route, {
    dynamic arguments,
    Map<String, String?>? params,
  }) {
    final String url = _generateUrl(route, params);
    return Get.offAllNamed(url, arguments: arguments);
  }

  Future<dynamic>? toChild(AppRoutes parentRoute, AppRoutes childRoute) =>
      Get.toNamed('${parentRoute.url}${childRoute.url}');

  String _generateUrl(AppRoutes route, Map<String, String?>? params) {
    String url = route.url;

    if (params != null && params.isNotEmpty) {
      final String queryString = params.entries
          .where((MapEntry<String, String?> entry) => entry.value != null)
          .map((MapEntry<String, String?> entry) =>
              '${Uri.encodeComponent(entry.key)}=${Uri.encodeComponent(entry.value!)}')
          .join('&');

      url = '$url?$queryString';
    }
    return url;
  }
}
