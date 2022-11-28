import 'package:bookingme/screens/hotel_screen.dart';
import 'package:bookingme/screens/ticket_view.dart';
import 'package:bookingme/utils/app_info_list.dart';
import 'package:bookingme/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              const Gap(40),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Good Morning,',
                      style: Styles.headLineStyle3,
                    ),
                    const Gap(5),
                    Text(
                      'Book Tickets Now',
                      style: Styles.headLineStyle1,
                    ),
                  ],
                ),
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/travel.jpg')),
                    )),
              ]),
              const Gap(25),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF4F6FD),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Row(children: [
                  const Icon(
                    FluentSystemIcons.ic_fluent_search_regular,
                    color: Color(0xFFBFC205),
                  ),
                  Text(
                    "Search for your destination",
                    style: Styles.headLineStyle4,
                  ),
                ]),
              ),
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Upcoming Flights", style: Styles.headLineStyle2),
                  InkWell(
                    onTap: () {
                      // print("you're tapped");
                    },
                    child: Text("See All",
                        style: Styles.textStyle
                            .copyWith(color: Styles.primaryColor)),
                  )
                ],
              )
            ]),
          ),
          // const TicketView(),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
                children: ticketList
                    .map((singleTicket) => TicketView(ticket: singleTicket))
                    .toList()),
          ),

          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hotels", style: Styles.headLineStyle2),
                InkWell(
                  onTap: () {
                    // print("you're tapped");
                  },
                  child: Text("See All",
                      style: Styles.textStyle
                          .copyWith(color: Styles.primaryColor)),
                )
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
                children: hotelList
                    .map((singleHotel) => HotelScreen(hotel: singleHotel))
                    .toList()),
          ),
        ],
      ),
    );
  }
}
