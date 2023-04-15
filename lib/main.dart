import 'package:admin_dashboard_web/constants/style.dart';
import 'package:admin_dashboard_web/controllers/navigation_controller.dart';
import 'package:admin_dashboard_web/layout.dart';
import 'package:admin_dashboard_web/pages/404/error_page.dart';
import 'package:admin_dashboard_web/pages/authentication/authentication.dart';
import 'package:admin_dashboard_web/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'controllers/menu_controller.dart';

void main() {
  Get.put(SideMenuController());
  Get.put(NavigationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      unknownRoute: GetPage(
        name: '/not-found',
        page: () => const PageNotFound(),
        transition: Transition.fadeIn,
      ),
      title: 'Admin Dashboard',
      debugShowCheckedModeBanner: false,
      initialRoute: authenticationPageRoute,
      getPages: [
        GetPage(
          name: authenticationPageRoute,
          page: () => const AuthenticationPage(),
        ),
        GetPage(
          name: rootRoute,
          page: () => const SiteLayout(),
        ),
      ],
      theme: ThemeData(
        scaffoldBackgroundColor: light,
        textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          },
        ),
      ),
    );
  }
}
