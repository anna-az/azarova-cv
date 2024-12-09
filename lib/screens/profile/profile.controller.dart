// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../common/base/routes.dart';
import '../../common/navigation/navigation.service.dart';

class ProfileController extends GetxController {
  ProfileController(this._navigationService);
  final NavigationService _navigationService;

  void navigate(AppRoutes route) =>
      _navigationService.toChild(AppRoutes.profile, route);
}
