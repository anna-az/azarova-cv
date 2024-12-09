// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../../../common/dialog/dialog.model.dart';
import '../../../../../common/dialog/dialog.service.dart';
import '../../detailed-info.controller.dart';
import 'skills.translation.dart';

class SkillsController extends DetailedInfoController {
  SkillsController(super.detailedInfoService, this._dialogService);
  final DialogService _dialogService;
  final RxList<String> skills = <String>[
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
    'Pusher',
  ].obs;

  Future<void> deleteSkill(String skill) async {
    final bool confirm = await _dialogService.confirm(const DialogModel(
        title: SkillsTranslationNames.delete,
        content: SkillsTranslationNames.deleteContent));
    if (confirm) {
      skills.removeWhere((String item) => item == skill);
    }
  }

  Future<void> addSkill() async {
    final String? newSkill = await _dialogService.input(const DialogModel(
        title: SkillsTranslationNames.add,
        content: SkillsTranslationNames.addContent));
    if (newSkill != null) {
      skills.add(newSkill);
    }
  }
}
