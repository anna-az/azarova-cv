// Package imports:
import 'package:get/get.dart';

import '../../screens/languages/languages.binding.dart';
import '../../screens/languages/languages.screen.dart';
import '../../screens/profile/about/about.screen.dart';
import '../../screens/profile/contacts/contacts.binding.dart';
import '../../screens/profile/contacts/contacts.screen.dart';
import '../../screens/profile/profile.binding.dart';
import '../../screens/profile/profile.screen.dart';

// Project imports:

enum AppRoutes {
  language('/language'),
  profile('/profile'),
  about('/about'),
  contacts('/contacts');

  const AppRoutes(this.url);
  final String url;

  static List<GetPage<dynamic>> routes = <GetPage<dynamic>>[
    GetPage<void>(
        name: AppRoutes.language.url,
        page: () => const LanguagesScreen(),
        binding: LanguagesBinding()),
    GetPage<void>(
        name: AppRoutes.profile.url,
        page: () => const ProfileScreen(),
        binding: ProfileBinding(),
        children: <GetPage<dynamic>>[
          GetPage<void>(
              name: AppRoutes.about.url, page: () => const AboutScreen()),
          GetPage<void>(
              name: AppRoutes.contacts.url,
              page: () => const ContactsScreen(),
              binding: ContactsBinding()),
        ]),
  ];
}
