// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../../../common/base/initial-vaules.dart';
import '../../detailed-info.controller.dart';
import 'experience.model.dart';
import 'experience.service.dart';

class ExperienceController extends DetailedInfoController {
  ExperienceController(super.detailedInfoService, this._experienceService);
  final ExperienceService _experienceService;

  final RxList<ExperienceModel> professionalExperience =
      <ExperienceModel>[].obs;

  @override
  void saveData() => _experienceService.cacheList(professionalExperience);

  @override
  void initData() {
    professionalExperience.value = _experienceService.items.isNotEmpty
        ? _experienceService.items
        : InitialValues.professionalExperience;
  }
}
