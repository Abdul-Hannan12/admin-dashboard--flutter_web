import 'package:admin_dashboard_web/pages/overview/widgets/info_card.dart';
import 'package:flutter/material.dart';

class OverviewCardsLargeScreen extends StatelessWidget {
  const OverviewCardsLargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        InfoCard(
          title: "Rides in progress",
          value: "7",
          isActive: false,
          topColor: Colors.orange,
          onTap: () {},
        ),
        SizedBox(width: width / 64),
        InfoCard(
          title: "Packages Delivered",
          value: "7",
          isActive: false,
          topColor: Colors.lightGreen,
          onTap: () {},
        ),
        SizedBox(width: width / 64),
        InfoCard(
          title: "Cancelled Delivery",
          value: "3",
          isActive: false,
          topColor: Colors.redAccent,
          onTap: () {},
        ),
        SizedBox(width: width / 64),
        InfoCard(
          title: "Scheduled Deliveries",
          value: "3",
          isActive: false,
          topColor: Colors.redAccent,
          onTap: () {},
        ),
      ],
    );
  }
}
