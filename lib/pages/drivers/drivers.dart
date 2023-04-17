import 'package:admin_dashboard_web/constants/style.dart';
import 'package:admin_dashboard_web/pages/drivers/widgets/drivers_table.dart';
import 'package:admin_dashboard_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../constants/controllers.dart';

class DriversPage extends StatelessWidget {
  const DriversPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 6),
                child: CustomText(
                  menuController.activeItem.value.toCapitalized(),
                  size: 24,
                  weight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: const [
              DriverTable(),
            ],
          ),
        ),
      ],
    );
  }
}
