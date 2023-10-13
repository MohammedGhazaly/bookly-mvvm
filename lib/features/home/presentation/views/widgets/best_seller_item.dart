import 'package:bookly_mvvm/core/constants.dart';
import 'package:bookly_mvvm/core/utils/my_assets.dart';
import 'package:bookly_mvvm/core/utils/my_styles.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          SizedBox(
            width: 30.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Harry potter and the goblet of fire",
                  maxLines: 2,
                  style: MyStyles.textStyle20.copyWith(
                      fontFamily: kGTSectreaFine,
                      fontWeight: FontWeight.normal),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Robert howard",
                  style: MyStyles.textStyle14.copyWith(
                      color: Colors.white.withOpacity(
                    0.7,
                  )),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "19.99",
                        style: MyStyles.textStyle20,
                      ),
                      BookRating()
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
