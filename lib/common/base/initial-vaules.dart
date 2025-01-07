// Package imports:
import 'package:uuid/uuid.dart';

// Project imports:
import '../../screens/profile/detailed-info/widgets/apps/app.model.dart';
import '../../screens/profile/detailed-info/widgets/contacts/contacts.model.dart';
import '../../screens/profile/detailed-info/widgets/contacts/phone/phone.model.dart';
import '../../screens/profile/detailed-info/widgets/experience/experience.model.dart';
import '../../screens/profile/detailed-info/widgets/languages/language/language-level.enum.dart';
import '../../screens/profile/detailed-info/widgets/languages/language/language.model.dart';
import '../../screens/profile/detailed-info/widgets/skills/skill.model.dart';

mixin InitialValues {
  static final ContactsModel contacts = ContactsModel(
      phone: PhoneModel(phoneNumber: '0993211181', countyCode: 'UA'),
      email: 'azarova2828@gmail.com',
      location: 'Kyiv, Ukraine');

  static final List<SkillModel> skills = <SkillModel>[
    SkillModel(id: 1, name: 'Flutter'),
    SkillModel(id: 2, name: 'Dart'),
    SkillModel(id: 3, name: 'Redux'),
    SkillModel(id: 4, name: 'Getx'),
    SkillModel(id: 5, name: 'BloC'),
    SkillModel(id: 6, name: 'REST API'),
    SkillModel(id: 7, name: 'Git'),
    SkillModel(id: 8, name: 'OOP'),
    SkillModel(id: 9, name: 'SOLID'),
    SkillModel(id: 10, name: 'DRY'),
    SkillModel(id: 11, name: 'Clean Architecture'),
    SkillModel(id: 12, name: 'GitHub'),
    SkillModel(id: 13, name: 'Azure DevOps'),
    SkillModel(id: 14, name: 'Github Actions'),
    SkillModel(id: 15, name: 'Azure Pipelines'),
    SkillModel(id: 16, name: 'Firebase Dynamic Links'),
    SkillModel(id: 17, name: 'Firebase Notifications'),
    SkillModel(id: 18, name: 'Firebase App Distribution'),
    SkillModel(id: 19, name: 'Firebase Crashlytics'),
    SkillModel(id: 20, name: 'Firebase  Analytics'),
    SkillModel(id: 21, name: 'Google Play'),
    SkillModel(id: 22, name: 'App Store'),
    SkillModel(id: 23, name: 'TestFlight'),
    SkillModel(id: 24, name: 'Google Play Console'),
    SkillModel(id: 25, name: 'XCode'),
    SkillModel(id: 26, name: 'Android Studio'),
    SkillModel(id: 27, name: 'Unit and widget tests'),
    SkillModel(id: 28, name: 'Pusher'),
  ];

  static final List<LanguageModel> languages = <LanguageModel>[
    LanguageModel(id: 1, language: 'English', level: LanguageLevel.b2),
    LanguageModel(id: 2, language: 'Ukrainian', level: LanguageLevel.native),
    LanguageModel(id: 3, language: 'Russian', level: LanguageLevel.native),
  ];

  static final List<AppModel> apps = <AppModel>[
    AppModel(
        id: const Uuid().v4().hashCode,
        title: 'Swoop',
        appStoreUrl: 'swoop-social-dining/id1565197231'),
    AppModel(
        id: const Uuid().v4().hashCode,
        title: 'Tribe',
        appStoreUrl: 'tribe-sport-fitness-app/id6458219258',
        googlePlayId: 'prod.tribe.android'),
    AppModel(
        id: const Uuid().v4().hashCode,
        title: 'Advenium Kiosk',
        googlePlayId: 'prod.advenium.com'),
  ];

  static final List<ExperienceModel> professionalExperience = <ExperienceModel>[
    ExperienceModel(
        id: 1,
        startTime: DateTime(2023, 7),
        position: 'Flutter Developer',
        company: 'Tribe',
        responsibilities: <String>[
          'Full-cycle development',
          'Azure Pipelines setup',
          'REST API binding',
          'Firebase (Messaging, App Distribution)',
          'App distribution to App Store and Google Play',
        ]),
    ExperienceModel(
        id: 2,
        startTime: DateTime(2022, 5),
        position: 'Flutter Developer',
        company: 'Advenium',
        responsibilities: <String>[
          'Development and Support',
          'CI/CD setup (GitHub Actions) for Firebase and Google Play distribution',
          'REST API binding',
          'Firebase (App Distribution)',
          'Unit and widget tests',
          'Flavors setup',
        ]),
    ExperienceModel(
        id: 3,
        startTime: DateTime(2022, 3),
        position: 'Flutter Developer',
        company: 'IMA Systems LLC',
        responsibilities: <String>[
          'Development and Support',
          'CI/CD setup (GitHub Actions) for Firebase, Google Play and App Store distribution',
          'REST API binding',
          'Firebase (Analytics, Crashlytics, App Distribution)',
          'Unit and widget tests',
          'Flavors setup',
          'Git Hooks and pre-commit setup',
        ]),
    ExperienceModel(
        id: 4,
        startTime: DateTime(2021, 3),
        endTime: DateTime(2022, 3),
        position: 'Flutter Developer',
        company: 'Swoop - Social Dinning',
        responsibilities: <String>[
          'Development and Support',
          'Firebase (Dynamic Links, Notifications)',
          'REST API binding',
          'Pusher setup',
          'App Store setup and app distribution',
          'Unit and widget tests',
        ]),
  ];
}
