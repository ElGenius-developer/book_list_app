import 'package:book_list_app/features/books_list/domain/entities/person.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'person_model.g.dart';

@HiveType(typeId: 3)
@JsonSerializable()
class PersonModel {
  @HiveField(1)
  @JsonKey(name: "name")
  final String? name;
  @HiveField(3)
  @JsonKey(name: "birth_year")
  final int? birthYear;
  @HiveField(5)
  @JsonKey(name: "death_year")
  final int? deathYear;

  const PersonModel({required this.name, required this.birthYear, required this.deathYear});

  factory PersonModel.fromJson(Map<String, dynamic> json) => _$PersonModelFromJson(json);

  Person toEntity() => Person(name: name, birthYear: birthYear, deathYear: deathYear);

  factory PersonModel.fromEntity(Person person) =>
      PersonModel(name: person.name, birthYear: person.birthYear, deathYear: person.deathYear);
}
