import 'package:bookly_mvvm/core/shared_widgets/custom_error_widget.dart';
import 'package:bookly_mvvm/core/utils/my_colors.dart';
import 'package:bookly_mvvm/features/home/presentation/view_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/home_view_widgets.dart/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomBookImage(
                      bookImage: state
                              .books[index].volumeInfo?.imageLinks?.thumbnail ??
                          ""),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          );
        }
      },
    );
  }
}
