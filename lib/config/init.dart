import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quranpally/config/router/app_router.dart';
import 'package:quranpally/config/theme/theme.dart';

final routerConfig = AppRouter().config();
final theme = AppMaterialTheme(GoogleFonts.poppinsTextTheme());

initialize() async {
  // TEMPORARY simulate splash screen for 2 seconds
  Future.delayed(const Duration(seconds: 2), () {
    FlutterNativeSplash.remove();
  });
}
