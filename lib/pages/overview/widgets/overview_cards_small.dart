import 'package:admin_dashboard_web/pages/overview/widgets/info_card_small.dart';
import 'package:flutter/material.dart';

class OverViewCardsSmallScreen extends StatelessWidget {
  const OverViewCardsSmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: "Rides in progress",
            value: "7",
            onTap: () {},
          ),
          SizedBox(height: width / 64),
          InfoCardSmall(
            title: "Packages Delivered",
            value: "7",
            onTap: () {},
          ),
          SizedBox(height: width / 64),
          InfoCardSmall(
            title: "Cancelled Delivery",
            value: "3",
            onTap: () {},
          ),
          SizedBox(height: width / 64),
          InfoCardSmall(
            title: "Scheduled Deliveries",
            value: "3",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
