// Project imports:

// Package imports:
import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import '../../../../../../common/hive/hive.types.dart';
import '../../../../../../common/json-serializable/json-serializable.interface.dart';

part 'phone.model.g.dart';

@HiveType(typeId: HiveTypeId.phone)
@JsonSerializable()
class PhoneModel implements IJsonSerializable {
  PhoneModel({required this.phoneNumber, required this.countyCode});

  factory PhoneModel.fromJson(Map<String, dynamic> json) =>
      _$PhoneModelFromJson(json);

  @HiveField(0)
  String phoneNumber;
  @HiveField(1)
  String countyCode;

  @override
  Map<String, dynamic> toJson() => _$PhoneModelToJson(this);
}
