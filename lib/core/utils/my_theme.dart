import 'package:bookly_mvvm/core/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData mainTheme = ThemeData(
    scaffoldBackgroundColor: MyColors.kPrimaryColor,
    useMaterial3: true,
    brightness: Brightness.dark,
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
  );
}
