import 'package:admin_dashboard_web/helpers/responsiveness.dart';
import 'package:admin_dashboard_web/widgets/large_screen.dart';
import 'package:admin_dashboard_web/widgets/side_menu.dart';
import 'package:admin_dashboard_web/widgets/small_screen.dart';
import 'package:admin_dashboard_web/widgets/top_nav.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar:
          ResponsiveWidget.isSmallScreen(context) ? false : true,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: const Drawer(
        child: SideMenu(),
      ),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
