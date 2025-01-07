// Project imports:
import '../../../../../common/hive/cache/cache-list-key.service.dart';
import '../../../../../common/hive/hive.boxes.dart';
import 'experience.model.dart';

class ExperienceService extends CacheListServiceKey<ExperienceModel> {
  ExperienceService() : super(hiveBox: HiveBoxes.experience.name);

  @override
  ExperienceModel fromJson(Map<String, dynamic> json) =>
      ExperienceModel.fromJson(json);
}
