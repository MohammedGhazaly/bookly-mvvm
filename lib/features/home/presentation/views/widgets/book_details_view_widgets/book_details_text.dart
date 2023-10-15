import 'package:bookly_mvvm/core/utils/my_styles.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/home_view_widgets.dart/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsText extends StatelessWidget {
  const BookDetailsText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "The Jungle book",
          maxLines: 3,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: MyStyles.textStyle30.copyWith(
            fontFamily: "GT Sectra Fine",
          ),
        ),
        SizedBox(
          height: 6.h,
        ),
        Text(
          "Rober howard",
          maxLines: 2,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: MyStyles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.normal,
              color: Colors.white.withOpacity(0.7)),
        ),
        SizedBox(
          height: 18,
        ),
        BookRating(
          alignment: MainAxisAlignment.center,
        )
      ],
    );
  }
}
