import 'package:auto_route/auto_route.dart';
import 'package:quranpally/features/Notification.dart/page/notification.dart';
import 'package:quranpally/features/Report/pages/report_description.dart';
import 'package:quranpally/features/Report/pages/report_proble.dart';
import 'package:quranpally/features/about/pages/about.dart';
import 'package:quranpally/features/authentication/login/page/login.dart';
import 'package:quranpally/features/help/pages/help.dart';
import 'package:quranpally/features/home/page/home.dart';
import 'package:quranpally/features/language/pages/language.dart';
import 'package:quranpally/features/menu/pages/menu.dart';
import 'package:quranpally/features/onboarding/pages/pages.dart';
import 'package:quranpally/features/authentication/register/pages/register.dart';
import 'package:quranpally/features/personal_info/page/personal_info.dart';
import 'package:quranpally/features/privacy/pages/privacy.dart';
import 'package:quranpally/features/settings/pages/settings.dart';
import 'package:quranpally/features/update/pages/update.dart';

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
        AutoRoute(
          page: HomePageRoute.page,
        ),
        AutoRoute(
          page: NotificationPageRoute.page,
        ),
        AutoRoute(
          page: MenuPageRoute.page,
        ),
        AutoRoute(
          page: SettingsPageRoute.page,
        ),
        AutoRoute(
          page: PrivacyPageRoute.page,
        ),
        AutoRoute(
          page: PersonalInfoPageRoute.page,
        ),
        AutoRoute(
          page: AboutPageRoute.page,
        ),
        AutoRoute(
          page: LAnguagePageRoute.page,
        ),
        AutoRoute(
          page: UpdatePageRoute.page,
        ),
        AutoRoute(
          page: HelpPageRoute.page,
        ),
        AutoRoute(
          page: ReportPageRoute.page,
        ),
        AutoRoute(
          page: ReportDescriptionPageRoute.page,
        ),
      ];
  @override
  List<AutoRouteGuard> get guards => [
        // optionally add root guards here
      ];
}
