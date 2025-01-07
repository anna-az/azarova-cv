// Project imports:
import '../../../../../common/hive/cache/cache-list-key.service.dart';
import '../../../../../common/hive/hive.boxes.dart';
import 'contacts.model.dart';

class ContactsService extends CacheListServiceKey<ContactsModel> {
  ContactsService() : super(hiveBox: HiveBoxes.contacts.name);

  @override
  ContactsModel fromJson(Map<String, dynamic> json) =>
      ContactsModel.fromJson(json);
}
