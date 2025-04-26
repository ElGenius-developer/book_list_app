// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books_response_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BooksResponseModelAdapter extends TypeAdapter<BooksResponseModel> {
  @override
  final int typeId = 1;

  @override
  BooksResponseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read()};
    return BooksResponseModel(
      count: fields[1] as int?,
      next: fields[3] as String?,
      previous: fields[5] as String?,
      results: (fields[7] as List).cast<BookModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, BooksResponseModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(1)
      ..write(obj.count)
      ..writeByte(3)
      ..write(obj.next)
      ..writeByte(5)
      ..write(obj.previous)
      ..writeByte(7)
      ..write(obj.results);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BooksResponseModelAdapter && runtimeType == other.runtimeType && typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BooksResponseModel _$BooksResponseModelFromJson(Map<String, dynamic> json) => BooksResponseModel(
  count: (json['count'] as num?)?.toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results:
      (json['results'] as List<dynamic>).map((e) => BookModel.fromJson(e as Map<String, dynamic>)).toList(),
);
