// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phone.model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PhoneModelAdapter extends TypeAdapter<PhoneModel> {
  @override
  final int typeId = 2;

  @override
  PhoneModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PhoneModel(
      phoneNumber: fields[0] as String,
      countyCode: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, PhoneModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.phoneNumber)
      ..writeByte(1)
      ..write(obj.countyCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PhoneModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhoneModel _$PhoneModelFromJson(Map<String, dynamic> json) => PhoneModel(
      phoneNumber: json['phoneNumber'] as String,
      countyCode: json['countyCode'] as String,
    );

Map<String, dynamic> _$PhoneModelToJson(PhoneModel instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'countyCode': instance.countyCode,
    };
