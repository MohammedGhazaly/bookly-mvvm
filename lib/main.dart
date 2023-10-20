import 'package:bookly_mvvm/core/services/api_service.dart';
import 'package:bookly_mvvm/core/utils/my_routes.dart';
import 'package:bookly_mvvm/core/utils/my_theme.dart';
import 'package:bookly_mvvm/core/utils/service_locator.dart';
import 'package:bookly_mvvm/features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly_mvvm/features/home/presentation/view_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_mvvm/features/home/presentation/view_model/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  setup();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        ),
      ],
      child: ScreenUtilInit(
          designSize: const Size(380, 700),
          builder: (_, context) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              theme: MyTheme.mainTheme,
              routerConfig: MyRouters.routes,
            );
          }),
    );
  }
}
