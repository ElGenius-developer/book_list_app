import 'package:book_list_app/features/books_list/domain/entities/book.dart';
import 'package:book_list_app/features/books_list/domain/entities/format.dart';
import 'package:book_list_app/features/books_list/domain/entities/person.dart';
import 'package:book_list_app/features/books_list/presentation/widgets/book_item.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

/* Created by Ahmed Ashraf on 4/25/2025.*/

class LoadingWidget extends StatelessWidget {
  final Widget? childWidget;
  final int count;

  const LoadingWidget({super.key, this.childWidget, this.count = 10});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Skeletonizer(
        enabled: true,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return _body();
          },

          itemCount: count,
        ),
      ),
    );
  }

  Widget _body() {
    return childWidget ??
        BookItem(
          //show asset image
          isProtoType: true,
          book: Book(
            id: 84,
            title: "Frankenstein; Or, The Modern Prometheus",
            authors: [Person(name: "Shelley, Mary Wollstonecraft", birthYear: 1797, deathYear: 1851)],
            summaries: [
              "Frankenstein; Or, The Modern Prometheus\" by Mary Wollstonecraft Shelley is a novel written in the early 19th century. The story explores themes of ambition, the quest for knowledge, and the consequences of man's hubris through the experiences of Victor Frankenstein and the monstrous creation of his own making.   The opening of the book introduces Robert Walton, an ambitious explorer on a quest to discover new lands and knowledge in the icy regions of the Arctic. In his letters to his sister Margaret, he expresses both enthusiasm and the fear of isolation in his grand venture. As Walton's expedition progresses, he encounters a mysterious, emaciated stranger who has faced great suffering—furthering the intrigue of his narrative. This stranger ultimately reveals his tale of creation, loss, and the profound consequences of seeking knowledge that lies beyond human bounds. The narrative is set up in a manner that suggests a deep examination of the emotions and ethical dilemmas faced by those who dare to defy the natural order. (This is an automatically generated summary.",
            ],
            translators: [],
            subjects: [],
            bookshelves: [],
            languages: [],
            copyright: null,
            mediaType: null,
            formats: BookFormat(
              imageJpeg: "https://images.gr-assets.com/books/1447303600m/84.jpg",
              textHtmlCharsetIso88591: null,
              textHtmlCharsetUtf8: null,
              textHtml: null,
              textPlainCharsetIso88591: null,
              textPlainCharsetUsAscii: null,
              textPlainCharsetUtf8: null,
              applicationEpubZip: null,
              applicationOctetStream: null,
              applicationRdfXml: null,
              applicationXMobipocketEbook: null,
            ),
            downloadCount: null,
          ),
        );
  }
}
