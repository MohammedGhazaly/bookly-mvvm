import 'package:bookly_mvvm/core/utils/my_styles.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: const CustomAppBar(),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const FeaturedBooksListView(),
                  SizedBox(
                    height: 36.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Text(
                      "Best seller",
                      style: MyStyles.textStyle18,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: BestSellerListview(),
          ),
        )
      ],
    );
  }
}
