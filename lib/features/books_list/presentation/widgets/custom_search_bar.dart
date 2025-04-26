import 'package:book_list_app/core/constants/colors.dart';
import 'package:book_list_app/core/constants/text_style.dart';
import 'package:book_list_app/core/di/dependency_injection.dart';
import 'package:book_list_app/features/books_list/presentation/cubits/books_cubit.dart';
import 'package:book_list_app/features/books_list/presentation/widgets/shadow_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/* Created by Ahmed Ashraf on 4/26/2025.*/
class CustomSearchBar extends StatefulWidget {
  final TextEditingController controller;

  const CustomSearchBar(this.controller, {super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ShadowWidget(
        backgroundColor: Colors.transparent,
        shadowColor: ColorsManager.mainExtraLight,
        child: SearchBar(
          shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
          elevation: WidgetStatePropertyAll(1),
          controller: widget.controller,
          backgroundColor: WidgetStatePropertyAll(ColorsManager.white),
          surfaceTintColor: WidgetStatePropertyAll(ColorsManager.white),
          shadowColor: WidgetStatePropertyAll(ColorsManager.mainExtraLight),
          onSubmitted: (value) => context.read<BooksCubit>().searchBooks(value),
          hintText: 'Search by title or author',
          hintStyle: WidgetStatePropertyAll(AppTextStyles.font16greyBold),
          leading: const Icon(Icons.search, color: ColorsManager.grey),
          trailing: [
            IconButton(icon: const Icon(Icons.close, color: ColorsManager.grey), onPressed: _clearSearch),
          ],
        ),
      ),
    );
  }

  void _clearSearch() {
    widget.controller.clear();
    sl<BooksCubit>().clearSearch();
    setState(() {});
  }
}
