import 'package:get/get.dart';

import '../../common/base/routes.dart';
import '../../common/navigation/navigation.service.dart';

class ProfileController extends GetxController {
  ProfileController(this._navigationService);
  final NavigationService _navigationService;

  void navigate(AppRoutes route) =>
      _navigationService.toChild(AppRoutes.profile, route);
}
