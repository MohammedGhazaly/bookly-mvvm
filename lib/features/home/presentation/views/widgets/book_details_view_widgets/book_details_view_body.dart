import 'package:bookly_mvvm/features/home/presentation/views/widgets/book_details_view_widgets/book_details_section.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/book_details_view_widgets/books_action.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/book_details_view_widgets/custom_book_details_app_bar.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/book_details_view_widgets/similar_books_section.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/home_view_widgets.dart/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.h),
                      child: CustomBookDetailsAppBar(),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.25),
                      child: CustomBookImage(
                          bookImage:
                              "https://m.media-amazon.com/images/I/81E9oNSK3bL._AC_UF1000,1000_QL80_.jpg"),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.w),
                      child: BookDetailsSection(),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 40.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: BooksAction(),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    SimilarBooksSection()
                  ],
                ),
              ),
            ))
      ],
    );
  }
}
