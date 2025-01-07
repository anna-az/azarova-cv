// Project imports:

// Package imports:
import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import '../../../../../../common/hive/hive.types.dart';
import '../../../../../../common/json-serializable/json-serializable-with-id.interface.dart';
import 'language-level.enum.dart';

part 'language.model.g.dart';

@HiveType(typeId: HiveTypeId.language)
@JsonSerializable()
class LanguageModel extends IJsonSerializableWithId {
  LanguageModel(
      {required this.id, required this.language, required this.level});

  factory LanguageModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageModelFromJson(json);

  @HiveField(0)
  @override
  int id;
  @HiveField(1)
  String language;
  @HiveField(2)
  LanguageLevel level;

  @override
  Map<String, dynamic> toJson() => _$LanguageModelToJson(this);
}
