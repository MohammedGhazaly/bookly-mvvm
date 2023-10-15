import 'package:bookly_mvvm/core/utils/my_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  final MainAxisAlignment alignment;
  const BookRating({super.key, this.alignment = MainAxisAlignment.start});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: alignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: const Color(0xffFFDD4F),
          size: 16.sp,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "4.8",
          style: MyStyles.textStyle14,
        ),
        const SizedBox(
          width: 3,
        ),
        Text(
          "(245)",
          maxLines: 1,
          style: MyStyles.textStyle14.copyWith(
              color: const Color(0xff707070), overflow: TextOverflow.ellipsis),
        )
      ],
    );
  }
}
