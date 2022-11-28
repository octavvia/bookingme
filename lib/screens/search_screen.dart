import 'package:bookingme/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text('what are you looking for?',
                style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor)),
            Gap(AppLayout.getHeight(20)),
            Container(
              height: 50,
              width: size.width,
              decoration: BoxDecoration(
                color: Styles.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Gap(AppLayout.getWidth(10)),
                  Icon(
                    FluentSystemIcons.ic_fluent_search_regular,
                    color: Styles.kakiColor,
                  ),
                  Gap(AppLayout.getWidth(10)),
                  Text(
                    "Search for your destination",
                    style: Styles.headLineStyle4,
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}
