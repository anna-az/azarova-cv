// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app.model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppModelAdapter extends TypeAdapter<AppModel> {
  @override
  final int typeId = 6;

  @override
  AppModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppModel(
      id: fields[0] as int,
      title: fields[1] as String,
      googlePlayId: fields[2] as String,
      appStoreUrl: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AppModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.googlePlayId)
      ..writeByte(3)
      ..write(obj.appStoreUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppModel _$AppModelFromJson(Map<String, dynamic> json) => AppModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      googlePlayId: json['googlePlayId'] as String? ?? '',
      appStoreUrl: json['appStoreUrl'] as String? ?? '',
    );

Map<String, dynamic> _$AppModelToJson(AppModel instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'googlePlayId': instance.googlePlayId,
      'appStoreUrl': instance.appStoreUrl,
    };
