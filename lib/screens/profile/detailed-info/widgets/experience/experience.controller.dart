// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../detailed-info.controller.dart';
import 'experience.model.dart';

class ExperienceController extends DetailedInfoController {
  ExperienceController(super.detailedInfoService);

  final RxList<ExperienceModel> professionalExperience =
      <ExperienceModel>[].obs;

  @override
  void saveData() => user.professionalExperience = professionalExperience;

  @override
  void initData() {
    professionalExperience.value = user.professionalExperience
        .map((ExperienceModel experience) => experience.copy())
        .toList();
  }
}
