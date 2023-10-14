import 'package:bookly_mvvm/features/home/presentation/views/widgets/book_details_view_widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 20.h),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.h),
              child: CustomBookDetailsAppBar(),
            ),
          ],
        ),
      ),
    );
  }
}
