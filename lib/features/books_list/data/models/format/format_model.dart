import 'package:book_list_app/features/books_list/domain/entities/format.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'format_model.g.dart';

@HiveType(typeId: 4)
@JsonSerializable()
class BookFormatModel {
  @HiveField(1)
  @JsonKey(name: "text/html")
  final String? textHtml;
  @HiveField(3)
  @JsonKey(name: "application/epub+zip")
  final String? applicationEpubZip;
  @HiveField(5)
  @JsonKey(name: "application/x-mobipocket-ebook")
  final String? applicationXMobipocketEbook;
  @HiveField(7)
  @JsonKey(name: "application/rdf+xml")
  final String? applicationRdfXml;
  @HiveField(9)
  @JsonKey(name: "image/jpeg")
  final String? imageJpeg;
  @HiveField(11)
  @JsonKey(name: "text/plain; charset=us-ascii")
  final String? textPlainCharsetUsAscii;
  @HiveField(13)
  @JsonKey(name: "application/octet-stream")
  final String? applicationOctetStream;
  @HiveField(15)
  @JsonKey(name: "text/plain; charset=utf-8")
  final String? textPlainCharsetUtf8;
  @HiveField(17)
  @JsonKey(name: "text/html; charset=utf-8")
  final String? textHtmlCharsetUtf8;
  @HiveField(19)
  @JsonKey(name: "text/plain; charset=iso-8859-1")
  final String? textPlainCharsetIso88591;
  @HiveField(21)
  @JsonKey(name: "text/html; charset=iso-8859-1")
  final String? textHtmlCharsetIso88591;

  const BookFormatModel({
    required this.textHtml,
    required this.applicationEpubZip,
    required this.applicationXMobipocketEbook,
    required this.applicationRdfXml,
    required this.imageJpeg,
    required this.textPlainCharsetUsAscii,
    required this.applicationOctetStream,
    required this.textPlainCharsetUtf8,
    required this.textHtmlCharsetUtf8,
    required this.textPlainCharsetIso88591,
    required this.textHtmlCharsetIso88591,
  });

  factory BookFormatModel.fromJson(Map<String, dynamic> json) => _$BookFormatModelFromJson(json);

  BookFormat toEntity() => BookFormat(
    textHtml: textHtml,
    applicationEpubZip: applicationEpubZip,
    applicationXMobipocketEbook: applicationXMobipocketEbook,
    applicationRdfXml: applicationRdfXml,
    imageJpeg: imageJpeg,
    textPlainCharsetUsAscii: textPlainCharsetUsAscii,
    applicationOctetStream: applicationOctetStream,
    textPlainCharsetUtf8: textPlainCharsetUtf8,
    textHtmlCharsetUtf8: textHtmlCharsetUtf8,
    textPlainCharsetIso88591: textPlainCharsetIso88591,
    textHtmlCharsetIso88591: textHtmlCharsetIso88591,
  );

  factory BookFormatModel.fromEntity(BookFormat formats) => BookFormatModel(
    textHtml: formats.textHtml,
    applicationEpubZip: formats.applicationEpubZip,
    applicationXMobipocketEbook: formats.applicationXMobipocketEbook,
    applicationRdfXml: formats.applicationRdfXml,
    imageJpeg: formats.imageJpeg,
    textPlainCharsetUsAscii: formats.textPlainCharsetUsAscii,
    applicationOctetStream: formats.applicationOctetStream,
    textPlainCharsetUtf8: formats.textPlainCharsetUtf8,
    textHtmlCharsetUtf8: formats.textHtmlCharsetUtf8,
    textPlainCharsetIso88591: formats.textPlainCharsetIso88591,
    textHtmlCharsetIso88591: formats.textHtmlCharsetIso88591,
  );
}
