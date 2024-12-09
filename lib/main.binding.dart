// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'common/app-translation/app.translation.dart';
import 'common/navigation/navigation.service.dart';
import 'common/shared-preferences/shared-preferences.service.dart';
import 'common/widgets/app-bar/app-bar.controller.dart';
import 'common/widgets/loader/loader.controller.dart';
import 'common/widgets/loader/loader.service.dart';
import 'common/widgets/settings/widgets/settings-drawer/settings-drawer.service.dart';

class MainBinding implements Bindings {
  @override
  Future<void> dependencies() async {
    // await Get.putAsync(() => DioErrorsService().init());
    await Get.putAsync(() => SharedPreferencesService().init());
    Get
      ..lazyPut(AppTranslation.new)
      ..lazyPut(SettingsDrawerService.new)
      ..lazyPut(NavigationService.new)
      ..lazyPut(LoaderController.new, fenix: true)
      ..lazyPut(() => AppBarController(Get.find(), Get.find()), fenix: true)
      ..lazyPut(LoaderService.new);
    // ..lazyPut(ToastService.new)
    // ..lazyPut(DialogService.new)
    // ..lazyPut(() => ApiService(Get.find(), Get.find(), Get.find()));
  }
}
