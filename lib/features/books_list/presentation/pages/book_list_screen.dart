import 'package:book_list_app/core/constants/colors.dart';
import 'package:book_list_app/core/constants/text_style.dart';
import 'package:book_list_app/features/books_list/domain/entities/book.dart';
import 'package:book_list_app/features/books_list/presentation/cubits/books_cubit.dart';
import 'package:book_list_app/features/books_list/presentation/widgets/loading_widget.dart';
import 'package:empty_widget/empty_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/api_error_widget.dart';
import '../widgets/book_item.dart';
import '../widgets/custom_search_bar.dart';

/* Created by Ahmed Ashraf on 4/25/2025.*/
class BookListScreen extends StatefulWidget {
  const BookListScreen({super.key});

  @override
  State<BookListScreen> createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  late final TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        shadowColor: ColorsManager.mainExtraLight,
        elevation: 2,
        backgroundColor: ColorsManager.white,

        surfaceTintColor: ColorsManager.white,
        title: Text('Book List App', style: AppTextStyles.font24BlueBold),
      ),

      body: RefreshIndicator(
        onRefresh: () => context.read<BooksCubit>().fetchBooks(),

        child: SizedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomSearchBar(_searchController),
              Expanded(
                flex: 9,
                child: BlocConsumer<BooksCubit, BooksState>(
                  listener: _listener,
                  builder: (context, state) {
                    return state.when(
                      initial: () => _buildInitial(),
                      loadingBooks: () => _buildLoading(),
                      booksListLoaded: (books, canLoadMore) => _buildBookList(books, canLoadMore),
                      booksLoadFail:
                          (message, books, canLoadMore) => _buildError(context, message, books, canLoadMore),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInitial() => const Center(child: Text('Welcome to Book Listing!'));

  Widget _buildLoading() => const Center(child: LoadingWidget());

  Widget _buildBookList(List<Book> books, bool canLoadMore) {
    if (books.isEmpty) {
      return _buildError(context, "No Books Found", books, false);
    }
    return ListView.builder(
      itemCount: books.length + 1,

      itemBuilder: (context, index) => _bookListBuilder(context, index, books, canLoadMore),
    );
  }

  Widget _bookListBuilder(BuildContext context, int index, List<Book> books, bool canLoadMore) {
    //show books items
    if (index < books.length) {
      return BookItem(book: books[index]);
    }
    //show loading message
    else {
      //show no more books message
      if (canLoadMore == false) {
        return Center(child: Text("No More Books"));
      }
      //load more books
      context.read<BooksCubit>().loadMoreBooks();
      //show loading indicator
      return const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [CircularProgressIndicator.adaptive(), SizedBox(width: 8), Text('Loading more...')],
          ),
        ),
      );
    }
  }

  Widget _buildError(BuildContext context, String message, List<Book> books, bool canLoadMore) {
    //show books if they are not empty
    if (books.isNotEmpty) {
      return _buildBookList(books, canLoadMore);
    }
    return ApiErrorWidget(
      message,
      packageImage: PackageImage.Image_2,
      onTryAgainPressed: () => context.read<BooksCubit>().fetchBooks(query: _searchController.text.trim()),
    );
  }

  void _listener(BuildContext context, BooksState state) {
    state.whenOrNull(
      booksLoadFail:
          (message, books, _) => ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(backgroundColor: ColorsManager.red, content: Text(message))),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
