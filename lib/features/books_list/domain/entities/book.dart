import 'format.dart';
import 'person.dart';

class Book {
  final int? id;
  final String? title;
  final List<Person> authors;
  final List<String> summaries;
  final List<Person> translators;
  final List<String> subjects;
  final List<String> bookshelves;
  final List<String> languages;
  final bool? copyright;
  final String? mediaType;
  final BookFormat? formats;
  final int? downloadCount;

  const Book({
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
}
