import 'package:bookly_mvvm/core/constants.dart';
import 'package:bookly_mvvm/core/utils/my_assets.dart';
import 'package:bookly_mvvm/core/utils/my_routes.dart';
import 'package:bookly_mvvm/core/utils/my_styles.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/home_view_widgets.dart/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(MyRouters.kBookDetails);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: SizedBox(
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
        ),
      ),
    );
  }
}
