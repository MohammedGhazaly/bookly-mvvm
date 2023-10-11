import 'package:bookly_mvvm/features/home/presentation/views/home_view.dart';
import 'package:bookly_mvvm/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

class MyRouters {
  static const kHomveViewRoute = "/homeView";
  static GoRouter routes = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomveViewRoute,
      builder: (context, state) => const HomeView(),
    ),
  ]);
}
