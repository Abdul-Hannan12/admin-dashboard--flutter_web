import 'package:admin_dashboard_web/widgets/side_menu.dart';
import 'package:flutter/material.dart';

import '../helpers/local_navigator.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: SideMenu()),
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: localNavigator(),
          ),
        ),
      ],
    );
  }
}
