import 'package:book_list_app/core/constants/colors.dart';
import 'package:book_list_app/core/constants/text_style.dart';
import 'package:book_list_app/core/utils/extensions_methods/string_extension.dart';
import 'package:book_list_app/features/books_list/domain/entities/book.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/* Created by Ahmed Ashraf on 4/25/2025.*/

class BookItemDetailsScreen extends StatelessWidget {
  final Book book;

  const BookItemDetailsScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 2,
        shadowColor: ColorsManager.mainExtraLight,
        surfaceTintColor: ColorsManager.white,
        leading: IconButton(
          onPressed: () => _back(context),
          icon: Icon(Icons.arrow_back, color: ColorsManager.mainBlue, size: 32),
        ),
        backgroundColor: ColorsManager.white,
        title: Text("Book Details", style: AppTextStyles.font24BlueBold, overflow: TextOverflow.ellipsis),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCoverImage(context),
            const SizedBox(height: 20),
            _buildTitleSection(),
            _buildDivider(),
            _buildAuthorsSection(),
            _buildDivider(),
            _buildSummarySection(),
            _buildDivider(),
            _buildMetadataSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildCoverImage(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * .5;

    return Center(
      child:
          book.formats?.imageJpeg != null
              ? Hero(
                tag: book.id.toString(),
                child: CachedNetworkImage(
                  imageUrl: book.formats?.imageJpeg ?? '',
                  height: height,
                  fit: BoxFit.fill,
                  placeholder:
                      (context, url) => Center(
                        child: SizedBox.fromSize(
                          size: Size.square(50),
                          child: Center(child: const CircularProgressIndicator.adaptive()),
                        ),
                      ),
                  errorWidget: (context, url, error) => Center(child: const Icon(Icons.error)),
                ),
              )
              : Container(
                color: ColorsManager.grey.withValues(alpha: .3),
                height: height,
                width: MediaQuery.sizeOf(context).width * .75,
                child: Icon(Icons.image),
              ),
    );
  }

  Widget _buildTitleSection() {
    return Visibility(
      visible: book.title.isNotNullOrEmpty,
      child: Text(book.title.emptyIfNull, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
    );
  }

  Widget _buildAuthorsSection() {
    final authors = book.authors.map((a) => a.name.emptyIfNull).toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Authors', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        const SizedBox(height: 8),
        Wrap(spacing: 8, children: authors.map((author) => Chip(label: Text(author))).toList()),
      ],
    );
  }

  Widget _buildSummarySection() {
    final summary = book.summaries.isEmpty ? "No summary available" : book.summaries.join(" ");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Summary', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        const SizedBox(height: 8),
        Text(summary, style: const TextStyle(fontSize: 16, height: 1.5)),
      ],
    );
  }

  Widget _buildMetadataSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildMetadataItem('Subjects', book.subjects),
        _buildMetadataItem('Languages', book.languages),
        _buildMetadataItem('Download Count', '${book.downloadCount}'),
        _buildMetadataItem('Copyright', book.copyright == true ? 'Yes' : 'No'),
      ],
    );
  }

  Widget _buildMetadataItem(String label, dynamic value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 120, child: Text('$label:', style: const TextStyle(fontWeight: FontWeight.w500))),
          Expanded(
            child: Text(
              value is List ? value.join(', ') : value.toString(),
              style: const TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return const Padding(padding: EdgeInsets.symmetric(vertical: 16), child: Divider(height: 1));
  }

  void _back(BuildContext context) {
    context.pop();
  }
}
