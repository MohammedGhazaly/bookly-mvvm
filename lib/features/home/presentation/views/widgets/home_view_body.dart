import 'package:bookly_mvvm/core/utils/my_assets.dart';
import 'package:bookly_mvvm/core/utils/my_styles.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            SizedBox(
              height: 20.h,
            ),
            const FeaturedBooksListView(),
            SizedBox(
              height: 36.h,
            ),
            const Text(
              "Best seller",
              style: MyStyles.titleMedium,
            ),
            BestSellerItem()
          ],
        ),
      ),
    );
  }
}

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125.h,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    MyAssets.kTestImage,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
