// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:admin_dashboard_web/constants/style.dart';
import 'package:flutter/material.dart';

class RevenueInfo extends StatelessWidget {
  final String title;
  final String amount;
  const RevenueInfo({
    Key? key,
    required this.title,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      width: 130,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: "$title\n\n",
              style: const TextStyle(color: lightGrey, fontSize: 16),
            ),
            TextSpan(
              text: "$amount\n\n",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
