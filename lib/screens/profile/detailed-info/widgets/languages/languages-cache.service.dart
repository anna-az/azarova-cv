// Project imports:
import '../../../../../common/hive/cache/cache-list-key.service.dart';
import '../../../../../common/hive/hive.boxes.dart';
import 'language/language.model.dart';

class LanguagesCacheService extends CacheListServiceKey<LanguageModel> {
  LanguagesCacheService() : super(hiveBox: HiveBoxes.languages.name);

  @override
  LanguageModel fromJson(Map<String, dynamic> json) =>
      LanguageModel.fromJson(json);
}
