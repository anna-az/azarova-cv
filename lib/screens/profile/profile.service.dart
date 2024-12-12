// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'detailed-info/widgets/apps/app.model.dart';
import 'detailed-info/widgets/contacts/contacts.model.dart';
import 'detailed-info/widgets/contacts/phone/phone.model.dart';
import 'detailed-info/widgets/languages/language/language-level.enum.dart';
import 'detailed-info/widgets/languages/language/language.model.dart';
import 'profile.model.dart';

class ProfileService extends GetxService {
  ProfileModel user = ProfileModel(
      avatar: '',
      firstName: 'Anna',
      lastName: 'Azarova',
      about:
          'I am a responsible and goal-oriented Flutter Developer with strong self-learning and quick learning abilities. My logical thinking and effective communication skills help me tackle complex challenges and collaborate efficiently within a team. As a team player, I thrive in dynamic environments and am always eager to expand my knowledge and contribute to project success.',
      contacts: ContactsModel(
          phone: PhoneModel(phone: '(099) 321-1181', countyCode: 'UA'),
          email: 'azarova2828@gmail.com',
          location: 'Kyiv, Ukraine'),
      skills: <String>[
        'Flutter',
        'Dart',
        'Redux',
        'Getx',
        'BloC',
        'REST API',
        'Git',
        'OOP',
        'SOLID',
        'DRY',
        'Clean Architecture',
        'GitHub',
        'Azure DevOps',
        'Github Actions',
        'Azure Pipelines',
        'Firebase Dynamic Links',
        'Firebase Notifications',
        'Firebase App Distribution',
        'Firebase Crashlytics',
        'Firebase  Analytics',
        'Google Play',
        'App Store',
        'TestFlight',
        'Google Play Console',
        'XCode',
        'Android Studio',
        'Unit and widget tests',
        'Pusher'
      ],
      languages: <LanguageModel>[
        LanguageModel(language: 'English', level: LanguageLevel.b2),
        LanguageModel(language: 'Ukrainian', level: LanguageLevel.c2),
        LanguageModel(language: 'Russian', level: LanguageLevel.c2),
      ],
      apps: <AppModel>[
        AppModel(
            title: 'Swoop', appStoreUrl: 'swoop-social-dining/id1565197231'),
        AppModel(
            title: 'Tribe',
            appStoreUrl: 'tribe-sport-fitness-app/id6458219258',
            googlePlayId: 'prod.tribe.android'),
        AppModel(title: 'Advenium Kiosk', googlePlayId: 'prod.advenium.com'),
      ]);
}
