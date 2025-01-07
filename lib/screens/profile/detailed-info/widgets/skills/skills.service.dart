// Project imports:
import '../../../../../common/hive/cache/cache-list-key.service.dart';
import '../../../../../common/hive/hive.boxes.dart';
import 'skill.model.dart';

class SkillsService extends CacheListServiceKey<SkillModel> {
  SkillsService() : super(hiveBox: HiveBoxes.skills.name);

  @override
  SkillModel fromJson(Map<String, dynamic> json) => SkillModel.fromJson(json);
}
