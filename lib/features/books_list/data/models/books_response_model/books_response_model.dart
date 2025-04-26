import 'package:book_list_app/features/books_list/data/models/book/book_model.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../domain/entities/books_response.dart';

part 'books_response_model.g.dart';

@HiveType(typeId: 1)
@JsonSerializable()
class BooksResponseModel {
  @HiveField(1)
  @JsonKey(name: "count")
  final int? count;
  @HiveField(3)
  @JsonKey(name: "next")
  final String? next;
  @HiveField(5)
  @JsonKey(name: "previous")
  final String? previous;
  @HiveField(7)
  @JsonKey(name: "results")
  final List<BookModel> results;

  const BooksResponseModel({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  factory BooksResponseModel.fromJson(Map<String, dynamic> json) => _$BooksResponseModelFromJson(json);

  BooksResponse toEntity() => BooksResponse(
    count: count,
    next: next,
    previous: previous,
    results: results.map((e) => e.toEntity()).toList(),
  );
}
