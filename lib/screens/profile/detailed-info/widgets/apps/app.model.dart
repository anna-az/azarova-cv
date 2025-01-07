// Project imports:

// Package imports:
import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import '../../../../../common/hive/hive.types.dart';
import '../../../../../common/json-serializable/json-serializable-with-id.interface.dart';

part 'app.model.g.dart';

@HiveType(typeId: HiveTypeId.app)
@JsonSerializable()
class AppModel extends IJsonSerializableWithId {
  AppModel(
      {required this.id,
      required this.title,
      this.googlePlayId = '',
      this.appStoreUrl = ''})
      : assert(googlePlayId.isNotEmpty || appStoreUrl.isNotEmpty,
            'At least one store');

  factory AppModel.fromJson(Map<String, dynamic> json) =>
      _$AppModelFromJson(json);

  @HiveField(0)
  @override
  int id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String googlePlayId;
  @HiveField(3)
  final String appStoreUrl;

  @override
  Map<String, dynamic> toJson() => _$AppModelToJson(this);
}
