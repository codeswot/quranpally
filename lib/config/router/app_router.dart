import 'package:auto_route/auto_route.dart';
import 'package:quranpally/features/CommentOnAya/pages/comment_on_aya.dart';
import 'package:quranpally/features/Notification.dart/page/notification.dart';
import 'package:quranpally/features/Profile/page/profile.dart';
import 'package:quranpally/features/Quran/page/quran.dart';
import 'package:quranpally/features/QuranDetails/page/quran_details.dart';
import 'package:quranpally/features/QuranDiscussVerse/pages/disscus_verse.dart';
import 'package:quranpally/features/Reflection/Commentscetion/page/comment_section.dart';
import 'package:quranpally/features/Reflection/Reflections/page/reflections.dart';
import 'package:quranpally/features/Reflection/Replies/page/replies.dart';
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
import 'package:quranpally/features/quranReading/page/quran_reading.dart';
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
        AutoRoute(
          page: QuranHomePageRoute.page,
        ),
        AutoRoute(
          page: QuranReadingPageRoute.page,
        ),
        AutoRoute(
          page: QuranDetailsPageRoute.page,
        ),
        AutoRoute(
          page: QuranDiscussPageRoute.page,
        ),
        AutoRoute(
          page: CommentOnAyaPageRoute.page,
        ),
        AutoRoute(
          page: ReflectionsRoutePage.page,
        ),
        AutoRoute(
          page: CommentSectionRoutePage.page,
        ),
        AutoRoute(
          page: RepliesPageRoute.page,
        ),
        AutoRoute(
          page: ProfilePageRoute.page,
        ),
      ];
  @override
  List<AutoRouteGuard> get guards => [
        // optionally add root guards here
      ];
}
