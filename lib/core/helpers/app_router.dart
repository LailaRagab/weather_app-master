import 'package:go_router/go_router.dart';

import '../../features/city_search_weather/presentation/view/home_view.dart';

class AppRouter {
  static const String kHomePath = '/';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kHomePath,
        builder: (context, state) => const Home(),
      ),
    ],
  );
}
