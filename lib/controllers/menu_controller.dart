import 'package:admin_dashboard_web/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/style.dart';

class SideMenuController extends GetxController {
  static SideMenuController instance = Get.find();

  var activeItem = overviewPageDisplayName.obs;
  var hoverItem = "".obs;

  makeActive(String item) {
    activeItem.value = item;
  }

  hover(String item) {
    if (!isActive(item)) hoverItem.value = item;
  }

  bool isActive(String item) => activeItem.value == item;

  bool isHovering(String item) => hoverItem.value == item;

  Widget returnIconFor(String item) {
    switch (item) {
      case overviewPageDisplayName:
        return _customIcon(Icons.trending_up, item);
      case driversPageDisplayName:
        return _customIcon(Icons.drive_eta, item);
      case clientsPageDisplayName:
        return _customIcon(Icons.people_alt_outlined, item);
      case authenticationPageDisplayName:
        return _customIcon(Icons.exit_to_app, item);
      default:
        return _customIcon(Icons.exit_to_app, item);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) {
      return Icon(
        icon,
        size: 22,
        color: dark,
      );
    }
    return Icon(
      icon,
      color: isHovering(itemName) ? dark : lightGrey,
    );
  }
}
