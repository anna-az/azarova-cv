// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../../../common/base/routes.dart';
import '../../../../../common/dialog/dialog.service.dart';
import '../../../../../common/navigation/navigation.service.dart';
import '../../detailed-info.controller.dart';
import 'app.model.dart';
import 'edit-app-popup/edit-app-popup.widget.dart';
import 'stores/stores.enum.dart';

class AppsController extends DetailedInfoController {
  AppsController(
      super.detailedInfoService, this._navigationService, this._dialogService);
  final NavigationService _navigationService;
  final DialogService _dialogService;

  final RxList<AppModel> apps = <AppModel>[].obs;

  @override
  void onInit() {
    apps.value = user.apps;
    super.onInit();
  }

  void openStore(String title, String url, Store store) {
    _navigationService.to(AppRoutes.webview,
        params: <String, String>{'url': '${store.url}$url', 'title': title});
  }

  Future<void> onEditOrAddAppTap(AppModel? app) async {
    final AppModel? changedApp = await _dialogService
        .showBottomDialog<AppModel>(EditAppPopupWidget(app));
    if (changedApp == null) {
      return;
    }
    final int index = apps.indexOf(app);
    if (index == -1) {
      apps.add(changedApp);
    }
    apps[index] = changedApp;
  }
}
