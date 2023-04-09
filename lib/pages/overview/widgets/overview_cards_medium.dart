import 'package:flutter/material.dart';

import 'info_card.dart';

class OverViewCardsMediumScreen extends StatelessWidget {
  const OverViewCardsMediumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            InfoCard(
              title: "Rides in progress",
              value: "7",
              topColor: Colors.orange,
              onTap: () {},
            ),
            SizedBox(width: width / 64),
            InfoCard(
              title: "Packages Delivered",
              value: "7",
              topColor: Colors.lightGreen,
              onTap: () {},
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            InfoCard(
              title: "Cancelled Delivery",
              value: "3",
              topColor: Colors.redAccent,
              onTap: () {},
            ),
            SizedBox(width: width / 64),
            InfoCard(
              title: "Scheduled Deliveries",
              value: "3",
              topColor: Colors.redAccent,
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
