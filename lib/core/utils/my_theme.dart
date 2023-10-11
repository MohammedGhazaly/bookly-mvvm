import 'package:bookly_mvvm/core/utils/my_colors.dart';
import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData mainTheme = ThemeData(
    scaffoldBackgroundColor: MyColors.primaryColor,
    useMaterial3: true,
    brightness: Brightness.dark,
  );
}
