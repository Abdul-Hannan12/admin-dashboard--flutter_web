// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:admin_dashboard_web/helpers/responsiveness.dart';
import 'package:admin_dashboard_web/widgets/horizontal_menu_item.dart';
import 'package:admin_dashboard_web/widgets/vertical_menu_item.dart';
import 'package:flutter/material.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function() onTap;

  const SideMenuItem({
    Key? key,
    required this.itemName,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isCustomSize(context)
        ? VertticalMenuItem(itemName: itemName, onTap: onTap)
        : HorizontalMenuItem(itemName: itemName, onTap: onTap);
  }
}
