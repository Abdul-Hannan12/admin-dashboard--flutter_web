import 'package:admin_dashboard_web/constants/utils.dart';
import 'package:admin_dashboard_web/pages/clients/widgets/clients_table.dart';
import 'package:admin_dashboard_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../constants/controllers.dart';

class ClientsPage extends StatelessWidget {
  const ClientsPage({super.key});

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
              ClientsTable(),
            ],
          ),
        ),
      ],
    );
  }
}
