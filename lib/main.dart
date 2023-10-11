import 'package:bookly_mvvm/core/utils/my_theme.dart';
import 'package:bookly_mvvm/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (_, context) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: MyTheme.mainTheme,
            home: const SplashView(),
          );
        });
  }
}
