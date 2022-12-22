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
                  Text('Surakarta', style: Styles.headLineStyle3),
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
          ),
          Gap(AppLayout.getHeight(5)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(AppLayout.getHeight(8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                ),
              ),
              Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(
                      AppLayout.getHeight(30),
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border: Border.all(
                            color: const Color(0xFF264CD2), width: 18)),
                  )),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(20),
                  vertical: AppLayout.getHeight(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                          FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                          color: Styles.primaryColor,
                          size: 27),
                    ),
                    Gap(AppLayout.getWidth(15)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('you\'v new reward',
                            style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                        Text('you have 90 k-event in this year',
                            style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.95),
                              fontSize: 15,
                            )),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text(
            'Acumulated point',
            style: Styles.headLineStyle2,
            textAlign: TextAlign.center,
          ),
          Gap(AppLayout.getHeight(20)),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20),
            ),
            child: Column(
              children: [
                Text('100',
                    style: TextStyle(
                      fontSize: 45,
                      color: Styles.textColor,
                      fontWeight: FontWeight.w600,
                    )),
                Gap(AppLayout.getHeight(40)),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text('milles accured',
                //         style: Styles.headLineStyle4.copyWith(fontSize: 16)),
                //     Text('12 december 2022',
                //         style: Styles.headLineStyle4.copyWith(fontSize: 16)),
                //   ],
                // ),
                // Gap(AppLayout.getHeight(20)),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text('23.042',
                //         style: Styles.headLineStyle4.copyWith(
                //             fontSize: 25, fontWeight: FontWeight.w600)),
                //     Text('Airlines CO',
                //         style: Styles.headLineStyle4.copyWith(
                //             fontSize: 25, fontWeight: FontWeight.w600)),
                //   ],
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text('milles',
                //         style: Styles.headLineStyle4.copyWith(fontSize: 16)),
                //     Text('recieved from',
                //         style: Styles.headLineStyle4.copyWith(fontSize: 16)),
                //   ],
                // ),
                // Gap(AppLayout.getHeight(40)),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text('25.976',
                //         style: Styles.headLineStyle4.copyWith(
                //             fontSize: 25, fontWeight: FontWeight.w600)),
                //     Text('Lion Air',
                //         style: Styles.headLineStyle4.copyWith(
                //             fontSize: 25, fontWeight: FontWeight.w600)),
                //   ],
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text('milles',
                //         style: Styles.headLineStyle4.copyWith(fontSize: 16)),
                //     Text('recieved from',
                //         style: Styles.headLineStyle4.copyWith(fontSize: 16)),
                //   ],
                // ),
                // Gap(AppLayout.getHeight(40)),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text('15.789',
                //         style: Styles.headLineStyle4.copyWith(
                //             fontSize: 25, fontWeight: FontWeight.w600)),
                //     Text('Batik Air',
                //         style: Styles.headLineStyle4.copyWith(
                //             fontSize: 25, fontWeight: FontWeight.w600)),
                //   ],
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text('milles',
                //         style: Styles.headLineStyle4.copyWith(fontSize: 16)),
                //     Text('recieved from',
                //         style: Styles.headLineStyle4.copyWith(fontSize: 16)),
                //   ],
                // ),

                Container(
                  height: AppLayout.getHeight(300),
                  width: AppLayout.getWidth(300),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(0)),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/qr.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Gap(AppLayout.getHeight(20)),
                Center(
                  child: Text('Scan QR code to enter the event',
                      style: Styles.headLineStyle4
                          .copyWith(fontSize: 16, color: Styles.primaryColor)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
