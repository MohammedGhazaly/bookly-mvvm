import 'package:bookly_mvvm/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_mvvm/features/home/presentation/views/home_view.dart';
import 'package:bookly_mvvm/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

class MyRouters {
  static const kHomeViewRoute = "/homeView";
  static const kBookDetails = "/bookDetailsView";
  static GoRouter routes = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeViewRoute,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kBookDetails,
      builder: (context, state) => const BookDetailsView(),
    ),
  ]);
}
