// Dart imports:
import 'dart:async';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../../../common/base/initial-vaules.dart';
import '../../../../../common/base/routes.dart';
import '../../../../../common/dialog/dialog.service.dart';
import '../../../../../common/navigation/navigation.service.dart';
import '../../detailed-info.controller.dart';
import 'app.model.dart';
import 'apps.service.dart';
import 'edit-app-popup/edit-app-popup.widget.dart';
import 'stores/stores.enum.dart';

class AppsController extends DetailedInfoController {
  AppsController(super.detailedInfoService, this._appService,
      this._navigationService, this._dialogService);
  final AppsService _appService;
  final NavigationService _navigationService;
  final DialogService _dialogService;

  final RxList<AppModel> apps = <AppModel>[].obs;

  @override
  void saveData() => _appService.cacheList(apps);
  @override
  void initData() => apps.value =
      _appService.items.isNotEmpty ? _appService.items : InitialValues.apps;

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
