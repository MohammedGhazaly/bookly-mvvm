import 'package:bookly_mvvm/core/utils/my_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color bgColor;
  final Color textColor;
  final double borderRadiusRight;
  final double borderRadiusLeft;
  final Function() onTapFunction;
  final String text;
  const CustomButton({
    super.key,
    required this.bgColor,
    required this.textColor,
    required this.borderRadiusRight,
    required this.borderRadiusLeft,
    required this.onTapFunction,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        onPressed: onTapFunction,
        style: TextButton.styleFrom(
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(borderRadiusRight),
              topRight: Radius.circular(borderRadiusRight),
              topLeft: Radius.circular(borderRadiusLeft),
              bottomLeft: Radius.circular(borderRadiusLeft),
            ),
          ),
        ),
        child: Text(
          text,
          style: MyStyles.textStyle16.copyWith(
            color: textColor,
            fontWeight:
                text == "Free Preview" ? FontWeight.normal : FontWeight.bold,
            fontSize: text == "Free Preview" ? 14 : 16,
          ),
        ),
      ),
    );
  }
}
