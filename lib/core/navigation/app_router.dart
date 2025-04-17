import 'package:auto_route/auto_route.dart';
import 'package:practice_routes/core/navigation/app_router.gr.dart';
import 'main_shell_routes.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends RootStackRouter {

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashScreenRoute.page,
          initial: true,
          path: '/',
        ),
        mainShellRoute,
      ];
}
