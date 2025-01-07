// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contacts.model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ContactsModelAdapter extends TypeAdapter<ContactsModel> {
  @override
  final int typeId = 1;

  @override
  ContactsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ContactsModel(
      phone: fields[0] as PhoneModel,
      email: fields[1] as String,
      location: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ContactsModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.phone)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.location);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContactsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactsModel _$ContactsModelFromJson(Map<String, dynamic> json) =>
    ContactsModel(
      phone: PhoneModel.fromJson(json['phone'] as Map<String, dynamic>),
      email: json['email'] as String,
      location: json['location'] as String,
    );

Map<String, dynamic> _$ContactsModelToJson(ContactsModel instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'email': instance.email,
      'location': instance.location,
    };
