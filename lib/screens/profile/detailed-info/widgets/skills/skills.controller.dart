// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../../../common/base/initial-vaules.dart';
import '../../../../../common/dialog/dialog.model.dart';
import '../../../../../common/dialog/dialog.service.dart';
import '../../../../../common/hive/hive.boxes.dart';
import '../../detailed-info.controller.dart';
import 'skill.model.dart';
import 'skills.service.dart';
import 'skills.translation.dart';

class SkillsController extends DetailedInfoController {
  SkillsController(
      super.detailedInfoService, this._skillsService, this._dialogService);
  final SkillsService _skillsService;
  final DialogService _dialogService;

  final RxList<SkillModel> skills = <SkillModel>[].obs;

  @override
  HiveBoxes box = HiveBoxes.skills;

  @override
  void saveData() => _skillsService.cacheList(skills);

  @override
  void initData() {
    skills.value = _skillsService.items.isNotEmpty
        ? _skillsService.items
        : InitialValues.skills;
  }

  Future<void> deleteSkill(int id) async {
    final bool confirm = await _dialogService.confirm(const DialogModel(
        title: SkillsTranslationNames.delete,
        content: SkillsTranslationNames.deleteContent));
    if (confirm) {
      skills.removeWhere((SkillModel item) => item.id == id);
    }
  }

  Future<void> addSkill() async {
    final String? newSkillName = await _dialogService.input(const DialogModel(
        title: SkillsTranslationNames.add,
        content: SkillsTranslationNames.addContent));
    if (newSkillName != null) {
      final int newId = generateNewId(skills);
      skills.add(SkillModel(id: newId, name: newSkillName));
    }
  }
}
