import 'package:admin_dashboard_web/constants/controllers.dart';
import 'package:admin_dashboard_web/constants/style.dart';
import 'package:admin_dashboard_web/helpers/responsiveness.dart';
import 'package:admin_dashboard_web/pages/authentication/authentication.dart';
import 'package:admin_dashboard_web/routing/routes.dart';
import 'package:admin_dashboard_web/widgets/custom_text.dart';
import 'package:admin_dashboard_web/widgets/side_menu_item.dart';
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
              children: [
                const SizedBox(height: 40),
                Row(
                  children: [
                    SizedBox(width: width / 48),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 12,
                      ),
                      child: Image.asset("icons/logo.png"),
                    ),
                    const Flexible(
                      child: CustomText(
                        "Dash",
                        size: 20,
                        weight: FontWeight.bold,
                        color: active,
                      ),
                    ),
                    SizedBox(width: width / 48),
                  ],
                ),
              ],
            ),
          const SizedBox(height: 40),
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
                        if (ResponsiveWidget.isSmallScreen(context)) {
                          Get.back();
                        }
                        navigationController.navigateTo(item.route);
                      }
                    }))
                .toList(),
          ),
        ],
      ),
    );
  }
}
