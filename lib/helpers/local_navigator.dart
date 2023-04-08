import 'package:admin_dashboard_web/constants/controllers.dart';
import 'package:admin_dashboard_web/routing/router.dart';
import 'package:admin_dashboard_web/routing/routes.dart';
import 'package:flutter/material.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: overviewPageRoute,
      onGenerateRoute: generateRoute,
    );
