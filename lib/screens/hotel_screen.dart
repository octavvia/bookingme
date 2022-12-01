import 'package:bookingme/utils/app_layout.dart';
import 'package:bookingme/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(300),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              spreadRadius: 5,
              blurRadius: 20,
              // offset: const Offset(0, 5), // changes position of shadow
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(160),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel['image']}"),
              ),
            ),
          ),
          const Gap(10),
          Text(hotel['place'],
              style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor)),
          const Gap(10),
          Text(hotel['hotel'],
              style: Styles.headLineStyle3.copyWith(color: Colors.white)),
          const Gap(10),
          Text('Rp. ${hotel['price']}/night',
              style: Styles.headLineStyle3.copyWith(color: Styles.kakiColor))
        ],
      ),
    );
  }
}
