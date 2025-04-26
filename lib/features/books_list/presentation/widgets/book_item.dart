import 'package:book_list_app/core/constants/colors.dart';
import 'package:book_list_app/core/constants/text_style.dart';
import 'package:book_list_app/core/routing/app_router.dart';
import 'package:book_list_app/core/routing/routing_context_extension.dart';
import 'package:book_list_app/core/utils/extensions_methods/string_extension.dart';
import 'package:book_list_app/features/books_list/domain/entities/book.dart';
import 'package:book_list_app/features/books_list/domain/entities/person.dart';
import 'package:book_list_app/features/books_list/presentation/widgets/shadow_widget.dart';
import 'package:cached_network_image/cached_network_image.dart' show CachedNetworkImage;
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

/* Created by Ahmed Ashraf on 4/25/2025.*/
class BookItem extends StatefulWidget {
  /// [book] is the book to display its information
  final Book book;

  /// [isProtoType] is used to show network image on loading instead of CachedNetworkImage
  final bool isProtoType;

  const BookItem({super.key, this.isProtoType = false, required this.book});

  @override
  State<BookItem> createState() => _BookItemState();
}

class _BookItemState extends State<BookItem> {
  bool _isExpanded = false;
  String summary = "";

  @override
  void initState() {
    summary = widget.book.summaries.join(" ");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, deviceInfo) {
        final imageHeight =
            deviceInfo.isMobile ? deviceInfo.screenSize.height / 2.5 : deviceInfo.screenSize.height / 1.5;

        final imageWidth = deviceInfo.screenSize.width * .9;
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: _navigateToBookDetails,
            child: ShadowWidget(
              shadowColor: ColorsManager.mainExtraLight,
              child: Column(
                children: [
                  if (widget.book.formats?.imageJpeg != null)
                    Visibility(
                      visible: widget.isProtoType == false,
                      replacement: Container(
                        height: imageHeight,
                        width: imageWidth,
                        color: ColorsManager.grey.withValues(alpha: .3),
                        child: Icon(Icons.image),
                      ),
                      child: Hero(
                        tag: widget.book.id.toString(),
                        child: CachedNetworkImage(
                          scale: 1.15,
                          filterQuality: FilterQuality.high,
                          height: imageHeight,
                          // width: imageWidth,
                          imageUrl: widget.book.formats!.imageJpeg!,
                          fit: BoxFit.cover,

                          placeholder: (context, url) => Center(child: CircularProgressIndicator.adaptive()),
                          errorWidget: (context, url, error) => const Icon(Icons.error),
                        ),
                      ),
                    ),

                  Visibility(
                    visible: widget.book.title.isNotNullOrEmpty,
                    child: ListTile(
                      title: SelectableText(
                        widget.book.title.emptyIfNull,
                        style: AppTextStyles.font18BlueBold,
                      ),
                      subtitle: _buildAuthors(widget.book.authors),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        // Summary Text
                        Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Padding(
                            padding: const EdgeInsetsDirectional.only(start: 15.0, end: 10, bottom: 10),
                            child: Text(
                              summary.isNotEmpty ? summary : 'No summary available',
                              maxLines: _isExpanded ? null : 3,
                              overflow: _isExpanded ? null : TextOverflow.ellipsis,
                              style: AppTextStyles.font14BlackNormal.copyWith(
                                color: summary.isNotEmpty ? ColorsManager.black : ColorsManager.grey,
                              ),
                            ),
                          ),
                        ),

                        // "See More/Less" Button
                        if (_showSeeMoreButton(summary))
                          TextButton(
                            onPressed: () => setState(() => _isExpanded = !_isExpanded),
                            child: Text(_isExpanded ? 'See Less' : 'See More'),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildAuthors(List<Person> authors) {
    final text = authors.map((a) => a.name.emptyIfNull).toList().join(" , ");

    return Text(text, style: Theme.of(context).textTheme.bodyMedium);
  }

  bool _showSeeMoreButton(String? text) {
    if (text.isNullOrEmpty) return false;

    // Only show button if text exceeds 3 lines
    final textSpan = TextSpan(text: text, style: Theme.of(context).textTheme.bodyMedium);

    final textPainter = TextPainter(text: textSpan, maxLines: 3, textDirection: TextDirection.ltr);

    textPainter.layout(maxWidth: MediaQuery.sizeOf(context).width - 40);
    return textPainter.didExceedMaxLines;
  }

  void _navigateToBookDetails() {
    context.pushNamed(
      RoutesNames.bookDetails,
      arguments: widget.book,
      pathParameters: {'bookId': widget.book.id.toString()},
    );
  }
}
