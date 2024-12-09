// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../../../common/dialog/dialog.model.dart';
import '../../../../../common/dialog/dialog.service.dart';
import '../../detailed-info.service.dart';
import 'skills.translation.dart';

class SkillsController extends GetxController {
  SkillsController(DetailedInfoService detailedInfoService, this._dialogService)
      : isEdit = detailedInfoService.isEdit;
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

  final RxBool isEdit;

  void changeIsEdit() => isEdit.value = !isEdit.value;

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
