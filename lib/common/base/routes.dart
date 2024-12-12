// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../screens/app-languages/app-languages.binding.dart';
import '../../screens/app-languages/app-languages.screen.dart';
import '../../screens/profile/detailed-info/detailed-info.screen.dart';
import '../../screens/profile/detailed-info/widgets/about/about.binding.dart';
import '../../screens/profile/detailed-info/widgets/about/about.widget.dart';
import '../../screens/profile/detailed-info/widgets/apps/apps.binding.dart';
import '../../screens/profile/detailed-info/widgets/apps/apps.widget.dart';
import '../../screens/profile/detailed-info/widgets/apps/store-webview/store-webview.binding.dart';
import '../../screens/profile/detailed-info/widgets/apps/store-webview/store-webview.screen.dart';
import '../../screens/profile/detailed-info/widgets/contacts/contacts.binding.dart';
import '../../screens/profile/detailed-info/widgets/contacts/contacts.widget.dart';
import '../../screens/profile/detailed-info/widgets/languages/languages.binding.dart';
import '../../screens/profile/detailed-info/widgets/languages/languages.widget.dart';
import '../../screens/profile/detailed-info/widgets/skills/skills.binding.dart';
import '../../screens/profile/detailed-info/widgets/skills/skills.widget.dart';
import '../../screens/profile/profile.binding.dart';
import '../../screens/profile/profile.screen.dart';
import '../../screens/profile/profile.translation.dart';

// Project imports:

enum AppRoutes {
  appLanguage('/app-language'),
  webview('/webview'),
  profile('/profile'),
  about('/about'),
  contacts('/contacts'),
  skills('/skills'),
  languages('/languages'),
  stores('/stores');

  const AppRoutes(this.url);
  final String url;

  static List<GetPage<dynamic>> routes = <GetPage<dynamic>>[
    GetPage<void>(
        name: AppRoutes.appLanguage.url,
        page: () => const AppLanguagesScreen(),
        binding: AppLanguagesBinding()),
    GetPage<void>(
        name: AppRoutes.webview.url,
        page: () => const StoreWebviewScreen(),
        binding: StoreWebviewBinding()),
    GetPage<void>(
        name: AppRoutes.profile.url,
        page: () => const ProfileScreen(),
        binding: ProfileBinding(),
        children: <GetPage<dynamic>>[
          GetPage<void>(
            name: AppRoutes.about.url,
            page: () => const DetailedInfoScreen(
                title: ProfileTranslationNames.about, child: AboutWidget()),
            binding: AboutBinding(),
          ),
          GetPage<void>(
              name: AppRoutes.contacts.url,
              page: () => const DetailedInfoScreen(
                  title: ProfileTranslationNames.contacts,
                  child: ContactsWidget()),
              binding: ContactsBinding()),
          GetPage<void>(
              name: AppRoutes.skills.url,
              page: () => const DetailedInfoScreen(
                  title: ProfileTranslationNames.skills, child: SkillsWidget()),
              binding: SkillsBinding()),
          GetPage<void>(
              name: AppRoutes.languages.url,
              page: () => const DetailedInfoScreen(
                  title: ProfileTranslationNames.languages,
                  child: LanguagesWidget()),
              binding: LanguagesBinding()),
          GetPage<void>(
              name: AppRoutes.stores.url,
              page: () => const DetailedInfoScreen(
                  title: ProfileTranslationNames.stores, child: AppsWidget()),
              binding: AppsBinding()),
        ]),
  ];
}
