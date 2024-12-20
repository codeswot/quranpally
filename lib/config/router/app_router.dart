import 'package:auto_route/auto_route.dart';
import 'package:quranpally/features/authentication/login/page/login.dart';
import 'package:quranpally/features/onboarding/pages/pages.dart';
import 'package:quranpally/features/authentication/register/pages/register.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();
  @override
  List<AutoRoute> get routes => [
        //of course, route to homepage if user is logged in (later) firebase auth
        AutoRoute(
          initial: true,
          page: OnboardRoute.page,
        ),
        AutoRoute(
          page: WelcomeRoute.page,
        ),
        AutoRoute(
          page: LoginPageRoute.page,
        ),
        AutoRoute(
          page: RegisterPageRoute.page,
        ),
      ];
  @override
  List<AutoRouteGuard> get guards => [
        // optionally add root guards here
      ];
}
