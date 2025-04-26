import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/book.dart';
import '../format/format_model.dart';
import '../person/person_model.dart';

part 'book_model.g.dart';

@HiveType(typeId: 2)
@JsonSerializable()
class BookModel {
  @HiveField(1)
  @JsonKey(name: "id")
  final int? id;
  @HiveField(3)
  @JsonKey(name: "title")
  final String? title;
  @HiveField(5)
  @JsonKey(name: "authors")
  final List<PersonModel> authors;
  @HiveField(7)
  @JsonKey(name: "summaries")
  final List<String> summaries;
  @HiveField(9)
  @JsonKey(name: "translators")
  final List<PersonModel> translators;
  @HiveField(11)
  @JsonKey(name: "subjects")
  final List<String>? subjects;
  @HiveField(13)
  @JsonKey(name: "bookshelves")
  final List<String>? bookshelves;
  @HiveField(15)
  @JsonKey(name: "languages")
  final List<String>? languages;
  @HiveField(17)
  @JsonKey(name: "copyright")
  final bool? copyright;
  @HiveField(19)
  @JsonKey(name: "media_type")
  final String? mediaType;
  @HiveField(21)
  @JsonKey(name: "formats")
  final BookFormatModel? formats;
  @HiveField(23)
  @JsonKey(name: "download_count")
  final int? downloadCount;

  const BookModel({
    required this.id,
    required this.title,
    required this.authors,
    required this.summaries,
    required this.translators,
    required this.subjects,
    required this.bookshelves,
    required this.languages,
    required this.copyright,
    required this.mediaType,
    required this.formats,
    required this.downloadCount,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) => _$BookModelFromJson(json);

  Book toEntity() => Book(
    id: id,
    title: title,
    authors: authors.map((e) => e.toEntity()).toList(),
    summaries: summaries,
    translators: translators.map((e) => e.toEntity()).toList(),
    subjects: subjects ?? [],
    bookshelves: bookshelves ?? [],
    languages: languages ?? [],
    copyright: copyright,
    mediaType: mediaType,
    formats: formats?.toEntity(),
    downloadCount: downloadCount,
  );

  BookModel fromEntity(Book book) => BookModel(
    id: book.id,
    title: book.title,
    authors: book.authors.map((e) => PersonModel.fromEntity(e)).toList(),
    summaries: book.summaries,
    translators: book.translators.map((e) => PersonModel.fromEntity(e)).toList(),
    subjects: book.subjects,
    bookshelves: book.bookshelves,
    languages: book.languages,
    copyright: book.copyright,
    mediaType: book.mediaType,
    formats: BookFormatModel.fromEntity(book.formats!),
    downloadCount: book.downloadCount,
  );
}
