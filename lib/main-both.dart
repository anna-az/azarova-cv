// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:bot_toast/bot_toast.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';

// Project imports:
import 'common/app-translation/app.translation.dart';
import 'common/base/routes.dart';
import 'common/color/color.extension.dart';
import 'common/theme/theme.helper.dart';
import 'common/widgets/loader/loader.widget.dart';
import 'common/widgets/settings/widgets/settings-drawer/settings-drawer.service.dart';
import 'common/widgets/settings/widgets/settings-drawer/settings-drawer.widget.dart';
import 'main.binding.dart';

Future<void> mainForBothEnv() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MainBinding().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.portraitUp,
    ]);
    final SettingsDrawerService settingsDrawerService = Get.find();

    return GetMaterialApp(
      builder: (BuildContext context, Widget? child) => BotToastInit()(
        context,
        LoaderOverlay(
            overlayColor: Colors.black.setOpacity(0.5),
            overlayWidgetBuilder: (_) => const Center(child: LoaderWidget()),
            child: Scaffold(
              key: settingsDrawerService.scaffoldKey,
              drawerEdgeDragWidth: 0,
              drawer: const SettingsDrawerWidget(),
              body: child,
            )),
      ),
      navigatorObservers: <NavigatorObserver>[BotToastNavigatorObserver()],
      debugShowCheckedModeBanner: false,
      theme: ThemeHelper.lightTheme,
      darkTheme: ThemeHelper.darkTheme,
      themeMode: ThemeMode.light,
      getPages: AppRoutes.routes,
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en'),
      translationsKeys: Get.find<AppTranslation>().combineAllTranslations(),
      initialRoute: AppRoutes.profile.url,
    );
  }
}
