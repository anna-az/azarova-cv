// Project imports:

// Package imports:
import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import '../../../../../common/hive/hive.types.dart';
import '../../../../../common/json-serializable/json-serializable-with-id.interface.dart';

part 'skill.model.g.dart';

@HiveType(typeId: HiveTypeId.skills)
@JsonSerializable()
class SkillModel extends IJsonSerializableWithId {
  SkillModel({required this.id, required this.name});

  factory SkillModel.fromJson(Map<String, dynamic> json) =>
      _$SkillModelFromJson(json);

  @HiveField(0)
  @override
  int id;
  @HiveField(1)
  String name;

  @override
  Map<String, dynamic> toJson() => _$SkillModelToJson(this);
}
