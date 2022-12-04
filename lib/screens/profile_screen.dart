import 'package:bookingme/utils/app_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:bookingme/utils/app_styles.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeight(20),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getWidth(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/me.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Gap(AppLayout.getWidth(20)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('octavia', style: Styles.headLineStyle1),
                  Gap(AppLayout.getHeight(5)),
                  Text('BALI-JAKARTA', style: Styles.headLineStyle3),
                  Gap(AppLayout.getHeight(5)),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(100)),
                        color: const Color(0xFFFEF4F3)),
                    padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(3),
                      vertical: AppLayout.getHeight(3),
                    ),
                    child: Row(children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getWidth(10),
                          vertical: AppLayout.getHeight(5),
                        ),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF526799),
                        ),
                        child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15),
                      ),
                      Gap(AppLayout.getWidth(5)),
                      Text('premium status', style: Styles.headLineStyle4),
                    ]),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      'you are tapped';
                    },
                    child: Text('Edit Profile', style: Styles.headLineStyle4),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
