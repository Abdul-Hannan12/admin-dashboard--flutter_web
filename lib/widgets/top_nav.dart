import 'package:admin_dashboard_web/constants/controllers.dart';
import 'package:admin_dashboard_web/constants/style.dart';
import 'package:admin_dashboard_web/helpers/responsiveness.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) {
  return AppBar(
    elevation: 0,
    leading: !ResponsiveWidget.isSmallScreen(context)
        ? Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 14),
                child: Image.asset(
                  kIsWeb
                      ? "icons/logo_small.png"
                      : "assets/icons/logo_small.png",
                  width: 28,
                ),
              )
            ],
          )
        : IconButton(
            onPressed: () {
              key.currentState!.openDrawer();
            },
            icon: const Icon(
              Icons.menu,
            ),
          ),
    title: Row(
      children: [
        Visibility(
          visible: !ResponsiveWidget.isSmallScreen(context),
          child: const CustomText(
            "Dash",
            color: lightGrey,
            size: 20,
          ),
        ),
        Expanded(child: Container()),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.settings,
            color: dark.withOpacity(.7),
            size: ResponsiveWidget.maxWidth(context, 370) ? 18 : 23,
          ),
        ),
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: dark.withOpacity(.7),
                size: ResponsiveWidget.maxWidth(context, 370) ? 18 : 23,
              ),
            ),
            Positioned(
              child: Container(
                width: 12,
                height: 12,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: active,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: light,
                    width: 2,
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          width: 1,
          height: 22,
          color: lightGrey,
        ),
        const SizedBox(width: 24),
        Visibility(
          visible: !ResponsiveWidget.maxWidth(context, 360),
          child: CustomText(
            userController.user.name.isEmpty
                ? "Admin User"
                : userController.user.name,
            color: lightGrey,
          ),
        ),
        const SizedBox(width: 16),
        Container(
          height: ResponsiveWidget.maxWidth(context, 370) ? 30 : null,
          width: ResponsiveWidget.maxWidth(context, 370) ? 30 : null,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Container(
            padding: const EdgeInsets.all(2),
            margin: const EdgeInsets.all(2),
            child: CircleAvatar(
              backgroundColor: light,
              child: Icon(
                Icons.person_outline,
                color: dark,
                size: ResponsiveWidget.maxWidth(context, 370) ? 18 : 23,
              ),
            ),
          ),
        ),
      ],
    ),
    iconTheme: const IconThemeData(color: dark),
    backgroundColor: Colors.transparent,
  );
}
