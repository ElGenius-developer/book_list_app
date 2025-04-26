// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PersonModelAdapter extends TypeAdapter<PersonModel> {
  @override
  final int typeId = 3;

  @override
  PersonModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read()};
    return PersonModel(
      name: fields[1] as String?,
      birthYear: fields[3] as int?,
      deathYear: fields[5] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, PersonModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.birthYear)
      ..writeByte(5)
      ..write(obj.deathYear);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PersonModelAdapter && runtimeType == other.runtimeType && typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonModel _$PersonModelFromJson(Map<String, dynamic> json) => PersonModel(
  name: json['name'] as String?,
  birthYear: (json['birth_year'] as num?)?.toInt(),
  deathYear: (json['death_year'] as num?)?.toInt(),
);
