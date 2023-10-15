import 'package:bookly_mvvm/core/shared_widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomButton(
            onTapFunction: () {},
            bgColor: Colors.white,
            textColor: Colors.black,
            borderRadiusLeft: 16,
            borderRadiusRight: 0,
            text: "19.99",
          ),
        ),
        Expanded(
          child: CustomButton(
            onTapFunction: () {},
            bgColor: Color(0xffEF8262),
            textColor: Colors.white,
            borderRadiusLeft: 0,
            borderRadiusRight: 16,
            text: "Free Preview",
          ),
        ),
      ],
    );
  }
}
