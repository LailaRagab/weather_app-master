import 'package:go_router/go_router.dart';

import '../../features/city_search_weather/presentation/view/home_view.dart';
import '../../features/city_search_weather/presentation/view/search.dart';

class AppRouter {
  static const String kHomePath = '/';
  static const String kSearchPath = '/search';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kHomePath,
        builder: (context, state) => const Home(),
      ),
      GoRoute(
        path: kSearchPath,
        builder: (context, state) => Search(),
      ),
    ],
  );
}
