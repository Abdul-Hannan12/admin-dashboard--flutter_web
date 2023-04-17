import 'package:admin_dashboard_web/constants/controllers.dart';
import 'package:admin_dashboard_web/constants/style.dart';
import 'package:admin_dashboard_web/helpers/responsiveness.dart';
import 'package:admin_dashboard_web/routing/routes.dart';
import 'package:admin_dashboard_web/widgets/side_menu_item.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Padding(
                  padding: EdgeInsets.only(
                    left: width / 48,
                  ),
                  child: Image.asset(
                    kIsWeb
                        ? "icons/logo_large.png"
                        : "assets/icons/logo_large.png",
                    width: 150,
                  ),
                ),
              ],
            ),
          const SizedBox(height: 10),
          Divider(color: lightGrey.withOpacity(.1)),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map((item) => SideMenuItem(
                    itemName: item.name,
                    onTap: () {
                      if (item.route == authenticationPageRoute) {
                        menuController.makeActive(overviewPageDisplayName);
                        Get.offAllNamed(authenticationPageRoute);
                      }

                      if (!menuController.isActive(item.name)) {
                        menuController.makeActive(item.name);
                        navigationController.navigateTo(item.route);
                      }
                      if (ResponsiveWidget.isSmallScreen(context)) {
                        Get.back();
                      }
                    }))
                .toList(),
          ),
        ],
      ),
    );
  }
}
