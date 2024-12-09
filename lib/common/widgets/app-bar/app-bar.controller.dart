// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../navigation/navigation.service.dart';
import '../settings/widgets/settings-drawer/settings-drawer.service.dart';

class AppBarController extends GetxController {
  AppBarController(this._settingsDrawerService, this._navigationService);
  final SettingsDrawerService _settingsDrawerService;
  final NavigationService _navigationService;

  void openDrawer() => _settingsDrawerService.openDrawer();
  void closeDrawer() => _settingsDrawerService.closeDrawer();

  void onBackTap() => _navigationService.back();
}
