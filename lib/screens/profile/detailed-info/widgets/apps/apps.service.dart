// Project imports:
import '../../../../../common/hive/cache/cache-list-key.service.dart';
import '../../../../../common/hive/hive.boxes.dart';
import 'app.model.dart';

class AppsService extends CacheListServiceKey<AppModel> {
  AppsService() : super(hiveBox: HiveBoxes.apps.name);

  @override
  AppModel fromJson(Map<String, dynamic> json) => AppModel.fromJson(json);
}
