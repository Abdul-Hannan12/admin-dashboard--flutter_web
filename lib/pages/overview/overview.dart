import 'package:admin_dashboard_web/constants/controllers.dart';
import 'package:admin_dashboard_web/constants/style.dart';
import 'package:admin_dashboard_web/helpers/responsiveness.dart';
import 'package:admin_dashboard_web/pages/overview/widgets/available_drivers.dart';
import 'package:admin_dashboard_web/pages/overview/widgets/overview_cards_large.dart';
import 'package:admin_dashboard_web/pages/overview/widgets/overview_cards_medium.dart';
import 'package:admin_dashboard_web/pages/overview/widgets/overview_cards_small.dart';
import 'package:admin_dashboard_web/pages/overview/widgets/revenue_section_large.dart';
import 'package:admin_dashboard_web/pages/overview/widgets/revenue_section_small.dart';
import 'package:admin_dashboard_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6,
                ),
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
            children: [
              if (ResponsiveWidget.isLargeScreen(context) ||
                  ResponsiveWidget.isMediumScreen(context))
                if (ResponsiveWidget.isCustomSize(context))
                  const OverViewCardsMediumScreen()
                else
                  const OverviewCardsLargeScreen()
              else
                const OverViewCardsSmallScreen(),
              if (!ResponsiveWidget.isSmallScreen(context))
                const RevenueSectionLarge()
              else
                const RevenueSectionSmall(),
              const AvailableDrivers()
            ],
          ),
        )
      ],
    );
  }
}
