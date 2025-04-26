// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookModelAdapter extends TypeAdapter<BookModel> {
  @override
  final int typeId = 2;

  @override
  BookModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read()};
    return BookModel(
      id: fields[1] as int?,
      title: fields[3] as String?,
      authors: (fields[5] as List).cast<PersonModel>(),
      summaries: (fields[7] as List).cast<String>(),
      translators: (fields[9] as List).cast<PersonModel>(),
      subjects: (fields[11] as List?)?.cast<String>(),
      bookshelves: (fields[13] as List?)?.cast<String>(),
      languages: (fields[15] as List?)?.cast<String>(),
      copyright: fields[17] as bool?,
      mediaType: fields[19] as String?,
      formats: fields[21] as BookFormatModel?,
      downloadCount: fields[23] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, BookModel obj) {
    writer
      ..writeByte(12)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(3)
      ..write(obj.title)
      ..writeByte(5)
      ..write(obj.authors)
      ..writeByte(7)
      ..write(obj.summaries)
      ..writeByte(9)
      ..write(obj.translators)
      ..writeByte(11)
      ..write(obj.subjects)
      ..writeByte(13)
      ..write(obj.bookshelves)
      ..writeByte(15)
      ..write(obj.languages)
      ..writeByte(17)
      ..write(obj.copyright)
      ..writeByte(19)
      ..write(obj.mediaType)
      ..writeByte(21)
      ..write(obj.formats)
      ..writeByte(23)
      ..write(obj.downloadCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookModelAdapter && runtimeType == other.runtimeType && typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookModel _$BookModelFromJson(Map<String, dynamic> json) => BookModel(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  authors:
      (json['authors'] as List<dynamic>).map((e) => PersonModel.fromJson(e as Map<String, dynamic>)).toList(),
  summaries: (json['summaries'] as List<dynamic>).map((e) => e as String).toList(),
  translators:
      (json['translators'] as List<dynamic>)
          .map((e) => PersonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  subjects: (json['subjects'] as List<dynamic>?)?.map((e) => e as String).toList(),
  bookshelves: (json['bookshelves'] as List<dynamic>?)?.map((e) => e as String).toList(),
  languages: (json['languages'] as List<dynamic>?)?.map((e) => e as String).toList(),
  copyright: json['copyright'] as bool?,
  mediaType: json['media_type'] as String?,
  formats: json['formats'] == null ? null : BookFormatModel.fromJson(json['formats'] as Map<String, dynamic>),
  downloadCount: (json['download_count'] as num?)?.toInt(),
);
