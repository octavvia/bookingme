import 'package:bookingme/screens/ticket_mid.dart';
import 'package:bookingme/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:bookingme/utils/app_layout.dart';
import 'package:bookingme/utils/app_styles.dart';
import 'package:bookingme/utils/app_info_list.dart';

import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: Stack(
        children: [
          ListView(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(20),
                  vertical: AppLayout.getHeight(20)),
              children: [
                Gap(AppLayout.getHeight(40)),
                Text(
                  "Ticket",
                  style: Styles.headLineStyle1,
                ),
                Gap(AppLayout.getHeight(20)),
                const AppTicketTabs(
                    firstTab: 'Upcoming', secondTab: 'Previous'),
                Gap(AppLayout.getHeight(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(20)),
                  child: TicketMid(
                    ticket: ticketList[0],
                  ),
                )
              ])
        ],
      ),
    );
  }
}
