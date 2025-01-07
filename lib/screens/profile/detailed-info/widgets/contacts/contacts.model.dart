// Package imports:
import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import '../../../../../common/hive/hive.types.dart';
import '../../../../../common/json-serializable/json-serializable.interface.dart';
import 'phone/phone.model.dart';

part 'contacts.model.g.dart';

@HiveType(typeId: HiveTypeId.contacts)
@JsonSerializable()
class ContactsModel implements IJsonSerializable {
  ContactsModel(
      {required this.phone, required this.email, required this.location});

  factory ContactsModel.fromJson(Map<String, dynamic> json) =>
      _$ContactsModelFromJson(json);

  @HiveField(0)
  PhoneModel phone;

  @HiveField(1)
  String email;

  @HiveField(2)
  String location;

  @override
  Map<String, dynamic> toJson() => _$ContactsModelToJson(this);
}
