// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language.model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LanguageModelAdapter extends TypeAdapter<LanguageModel> {
  @override
  final int typeId = 4;

  @override
  LanguageModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LanguageModel(
      id: fields[0] as int,
      language: fields[1] as String,
      level: fields[2] as LanguageLevel,
    );
  }

  @override
  void write(BinaryWriter writer, LanguageModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.language)
      ..writeByte(2)
      ..write(obj.level);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LanguageModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LanguageModel _$LanguageModelFromJson(Map<String, dynamic> json) =>
    LanguageModel(
      id: (json['id'] as num).toInt(),
      language: json['language'] as String,
      level: $enumDecode(_$LanguageLevelEnumMap, json['level']),
    );

Map<String, dynamic> _$LanguageModelToJson(LanguageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'language': instance.language,
      'level': _$LanguageLevelEnumMap[instance.level]!,
    };

const _$LanguageLevelEnumMap = {
  LanguageLevel.a1: 'a1',
  LanguageLevel.a2: 'a2',
  LanguageLevel.b1: 'b1',
  LanguageLevel.b2: 'b2',
  LanguageLevel.c1: 'c1',
  LanguageLevel.c2: 'c2',
  LanguageLevel.native: 'native',
};
