import 'package:flutter/material.dart';
import 'package:bookingme/utils/app_styles.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(12),
          vertical: AppLayout.getHeight(12)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.flight_takeoff_rounded,
            color: Color(0xffbfc2df),
          ),
          Gap(AppLayout.getWidth(10)),
          Text('Depature', style: Styles.textStyle),
        ],
      ),
    );
  }
}
