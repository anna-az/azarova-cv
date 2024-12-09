// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../screens/languages/languages.binding.dart';
import '../../screens/languages/languages.screen.dart';
import '../../screens/profile/detailed-info/deteiled-info.screen.dart';
import '../../screens/profile/detailed-info/widgets/about/about.binding.dart';
import '../../screens/profile/detailed-info/widgets/about/about.widget.dart';
import '../../screens/profile/detailed-info/widgets/contacts/contacts.binding.dart';
import '../../screens/profile/detailed-info/widgets/contacts/contacts.widget.dart';
import '../../screens/profile/detailed-info/widgets/skills/skills.binding.dart';
import '../../screens/profile/detailed-info/widgets/skills/skills.widget.dart';
import '../../screens/profile/profile.binding.dart';
import '../../screens/profile/profile.screen.dart';
import '../../screens/profile/profile.translation.dart';

// Project imports:

enum AppRoutes {
  language('/language'),
  profile('/profile'),
  about('/about'),
  contacts('/contacts'),
  skills('/skills');

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
        ]),
  ];
}
