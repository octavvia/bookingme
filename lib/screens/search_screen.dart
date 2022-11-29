import 'package:bookingme/utils/app_styles.dart';
import 'package:bookingme/widgets/double_text_widget.dart';
import 'package:bookingme/widgets/icon_text_widget.dart';
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
                style: Styles.headLineStyle1
                    .copyWith(fontSize: AppLayout.getWidth(35))),
            Gap(AppLayout.getHeight(20)),
            FittedBox(
              child: Container(
                padding: const EdgeInsets.all(3.5),
                height: 50,
                width: size.width,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                ),
                child: Row(
                  children: [
                    Container(
                        width: size.width * .50,
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(7)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(AppLayout.getHeight(50))),
                          color: Colors.white,
                        ),
                        child: const Center(
                          child: Text('Airline Tickets'),
                        )),
                    Container(
                        width: size.width * .46,
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(7)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(AppLayout.getHeight(50))),
                          color: Colors.transparent,
                        ),
                        child: const Center(
                          child: Text('Hotel Booking'),
                        ))
                  ],
                ),
              ),
            ),
            Gap(AppLayout.getHeight(25)),
            const AppIconText(
              icon: Icons.flight_takeoff_rounded,
              text: 'depature',
            ),
            Gap(AppLayout.getHeight(20)),
            const AppIconText(
              icon: Icons.flight_land_rounded,
              text: 'Arrival',
            ),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(15),
                  vertical: AppLayout.getHeight(15)),
              decoration: BoxDecoration(
                color: const Color(0xD91130CE),
                borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
              ),
              child: Center(
                child: Text('Find Tickets',
                    style: Styles.textStyle.copyWith(
                      color: Colors.white,
                    )),
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            const AppDoubleTextWidget(
                bigText: 'Upcoming Flight', smallText: 'see all'),
            Row(
              children: [
                Container(
                  height: AppLayout.getHeight(400),
                  width: size.width * .50,
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(15),
                      vertical: AppLayout.getHeight(15)),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: AppLayout.getHeight(190),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(12)),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/one.jpg')),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ]),
    );
  }
}
