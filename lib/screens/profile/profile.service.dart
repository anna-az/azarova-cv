// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'detailed-info/widgets/apps/app.model.dart';
import 'detailed-info/widgets/contacts/contacts.model.dart';
import 'detailed-info/widgets/contacts/phone/phone.model.dart';
import 'detailed-info/widgets/experience/experience.model.dart';
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
          phone: PhoneModel(phoneNumber: '0993211181', countyCode: 'UA'),
          email: 'azarova2828@gmail.com',
          location: 'Kyiv, Ukraine'),
      skills: <String>[],
      languages: <LanguageModel>[
        // LanguageModel(language: 'English', level: LanguageLevel.b2),
        // LanguageModel(language: 'Ukrainian', level: LanguageLevel.c2),
        // LanguageModel(language: 'Russian', level: LanguageLevel.c2),
      ],
      apps: <AppModel>[
        // AppModel(
        //     title: 'Swoop', appStoreUrl: 'swoop-social-dining/id1565197231'),
        // AppModel(
        //     title: 'Tribe',
        //     appStoreUrl: 'tribe-sport-fitness-app/id6458219258',
        //     googlePlayId: 'prod.tribe.android'),
        // AppModel(title: 'Advenium Kiosk', googlePlayId: 'prod.advenium.com'),
      ],
      professionalExperience: <ExperienceModel>[
        // ExperienceModel(
        //     startTime: DateTime(2023, 7),
        //     position: 'Flutter Developer',
        //     company: 'Tribe',
        //     responsibilities: <String>[
        //       'Full-cycle development',
        //       'Azure Pipelines setup',
        //       'REST API binding',
        //       'Firebase (Messaging, App Distribution)',
        //       'App distribution to App Store and Google Play',
        //     ]),
        // ExperienceModel(
        //     startTime: DateTime(2022, 5),
        //     position: 'Flutter Developer',
        //     company: 'Advenium',
        //     responsibilities: <String>[
        //       'Development and Support',
        //       'CI/CD setup (GitHub Actions) for Firebase and Google Play distribution',
        //       'REST API binding',
        //       'Firebase (App Distribution)',
        //       'Unit and widget tests',
        //       'Flavors setup',
        //     ]),
        // ExperienceModel(
        //     startTime: DateTime(2022, 3),
        //     position: 'Flutter Developer',
        //     company: 'IMA Systems LLC',
        //     responsibilities: <String>[
        //       'Development and Support',
        //       'CI/CD setup (GitHub Actions) for Firebase, Google Play and App Store distribution',
        //       'REST API binding',
        //       'Firebase (Analytics, Crashlytics, App Distribution)',
        //       'Unit and widget tests',
        //       'Flavors setup',
        //       'Git Hooks and pre-commit setup',
        //     ]),
        // ExperienceModel(
        //     startTime: DateTime(2021, 3),
        //     endTime: DateTime(2022, 3),
        //     position: 'Flutter Developer',
        //     company: 'Swoop - Social Dinning',
        //     responsibilities: <String>[
        //       'Development and Support',
        //       'Firebase (Dynamic Links, Notifications)',
        //       'REST API binding',
        //       'Pusher setup',
        //       'App Store setup and app distribution',
        //       'Unit and widget tests',
        //     ]),
      ]);
}
