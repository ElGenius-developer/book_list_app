// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'format_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookFormatModelAdapter extends TypeAdapter<BookFormatModel> {
  @override
  final int typeId = 4;

  @override
  BookFormatModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read()};
    return BookFormatModel(
      textHtml: fields[1] as String?,
      applicationEpubZip: fields[3] as String?,
      applicationXMobipocketEbook: fields[5] as String?,
      applicationRdfXml: fields[7] as String?,
      imageJpeg: fields[9] as String?,
      textPlainCharsetUsAscii: fields[11] as String?,
      applicationOctetStream: fields[13] as String?,
      textPlainCharsetUtf8: fields[15] as String?,
      textHtmlCharsetUtf8: fields[17] as String?,
      textPlainCharsetIso88591: fields[19] as String?,
      textHtmlCharsetIso88591: fields[21] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, BookFormatModel obj) {
    writer
      ..writeByte(11)
      ..writeByte(1)
      ..write(obj.textHtml)
      ..writeByte(3)
      ..write(obj.applicationEpubZip)
      ..writeByte(5)
      ..write(obj.applicationXMobipocketEbook)
      ..writeByte(7)
      ..write(obj.applicationRdfXml)
      ..writeByte(9)
      ..write(obj.imageJpeg)
      ..writeByte(11)
      ..write(obj.textPlainCharsetUsAscii)
      ..writeByte(13)
      ..write(obj.applicationOctetStream)
      ..writeByte(15)
      ..write(obj.textPlainCharsetUtf8)
      ..writeByte(17)
      ..write(obj.textHtmlCharsetUtf8)
      ..writeByte(19)
      ..write(obj.textPlainCharsetIso88591)
      ..writeByte(21)
      ..write(obj.textHtmlCharsetIso88591);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookFormatModelAdapter && runtimeType == other.runtimeType && typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookFormatModel _$BookFormatModelFromJson(Map<String, dynamic> json) => BookFormatModel(
  textHtml: json['text/html'] as String?,
  applicationEpubZip: json['application/epub+zip'] as String?,
  applicationXMobipocketEbook: json['application/x-mobipocket-ebook'] as String?,
  applicationRdfXml: json['application/rdf+xml'] as String?,
  imageJpeg: json['image/jpeg'] as String?,
  textPlainCharsetUsAscii: json['text/plain; charset=us-ascii'] as String?,
  applicationOctetStream: json['application/octet-stream'] as String?,
  textPlainCharsetUtf8: json['text/plain; charset=utf-8'] as String?,
  textHtmlCharsetUtf8: json['text/html; charset=utf-8'] as String?,
  textPlainCharsetIso88591: json['text/plain; charset=iso-8859-1'] as String?,
  textHtmlCharsetIso88591: json['text/html; charset=iso-8859-1'] as String?,
);
