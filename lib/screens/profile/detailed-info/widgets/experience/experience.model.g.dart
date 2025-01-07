// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experience.model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExperienceModelAdapter extends TypeAdapter<ExperienceModel> {
  @override
  final int typeId = 5;

  @override
  ExperienceModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExperienceModel(
      id: fields[0] as int,
      startTime: fields[1] as DateTime,
      company: fields[4] as String,
      position: fields[3] as String,
      responsibilities: (fields[5] as List).cast<String>(),
      endTime: fields[2] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, ExperienceModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.startTime)
      ..writeByte(2)
      ..write(obj.endTime)
      ..writeByte(3)
      ..write(obj.position)
      ..writeByte(4)
      ..write(obj.company)
      ..writeByte(5)
      ..write(obj.responsibilities);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExperienceModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExperienceModel _$ExperienceModelFromJson(Map<String, dynamic> json) =>
    ExperienceModel(
      id: (json['id'] as num).toInt(),
      startTime: DateTime.parse(json['startTime'] as String),
      company: json['company'] as String,
      position: json['position'] as String,
      responsibilities: (json['responsibilities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
    );

Map<String, dynamic> _$ExperienceModelToJson(ExperienceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
      'position': instance.position,
      'company': instance.company,
      'responsibilities': instance.responsibilities,
    };
