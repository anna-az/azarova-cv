// Project imports:

// Package imports:
import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import '../../../../../common/hive/hive.types.dart';
import '../../../../../common/json-serializable/json-serializable-with-id.interface.dart';

part 'experience.model.g.dart';

@HiveType(typeId: HiveTypeId.experience)
@JsonSerializable()
class ExperienceModel extends IJsonSerializableWithId {
  ExperienceModel(
      {required this.id,
      required this.startTime,
      required this.company,
      required this.position,
      required this.responsibilities,
      this.endTime});

  factory ExperienceModel.fromJson(Map<String, dynamic> json) =>
      _$ExperienceModelFromJson(json);

  @HiveField(0)
  @override
  int id;
  @HiveField(1)
  DateTime startTime;
  @HiveField(2)
  DateTime? endTime;
  @HiveField(3)
  String position;
  @HiveField(4)
  String company;
  @HiveField(5)
  List<String> responsibilities;

  @override
  Map<String, dynamic> toJson() => _$ExperienceModelToJson(this);
}
