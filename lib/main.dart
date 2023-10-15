import 'package:bookly_mvvm/core/utils/my_routes.dart';
import 'package:bookly_mvvm/core/utils/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(380, 700),
        builder: (_, context) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: MyTheme.mainTheme,
            routerConfig: MyRouters.routes,
          );
        });
  }
}
