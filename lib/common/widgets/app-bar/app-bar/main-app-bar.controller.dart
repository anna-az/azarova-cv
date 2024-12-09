// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../settings/widgets/settings-drawer/settings-drawer.service.dart';

class MainAppBarController extends GetxController {
  MainAppBarController(this._settingsDrawerService);
  final SettingsDrawerService _settingsDrawerService;

  void openDrawer() => _settingsDrawerService.openDrawer();
  void closeDrawer() => _settingsDrawerService.closeDrawer();
}
