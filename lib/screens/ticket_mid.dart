import 'package:bookingme/utils/app_layout.dart';
import 'package:bookingme/utils/app_styles.dart';
import 'package:bookingme/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketMid extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketMid({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /* showing blue part ticket */
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF526799),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(21)),
                  topRight: Radius.circular(AppLayout.getHeight(21)),
                ),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'],
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.black54)),
                      Expanded(
                        child: Container(),
                      ),
                      const ThickContainer(),
                      Expanded(
                        child: Stack(children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                // print(object)
                                return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => SizedBox(
                                        width: AppLayout.getWidth(6),
                                        height: AppLayout.getHeight(1),
                                        child: const DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: Colors.black54),
                                        ),
                                      ),
                                    ));
                              },
                            ),
                          ),
                        ]),
                      ),
                      // Center(
                      //   child: Transform.rotate(
                      //     angle: 1.5,
                      //     child: const Icon(Icons.local_airport_rounded,
                      //         color: Colors.white, size: 24),
                      //   ),
                      // ),
                      const ThickContainer(),
                      Expanded(
                        child: Container(),
                      ),
                      Text(ticket['to']['code'],
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.black54)),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(ticket['from']['city'],
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.black54)),
                      ),
                      Text(ticket['flying_time'],
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.black54)),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['to']['city'],
                          textAlign: TextAlign.end,
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.black54),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
            /* end of blue part ticket 
          start of orange part ticket*/
            ,
            Container(
              color: Colors.white70,
              child: Row(
                  // children: [
                  // SizedBox(
                  //   height: AppLayout.getHeight(20),
                  //   width: AppLayout.getWidth(10),
                  //   child: const DecoratedBox(
                  //     decoration: BoxDecoration(
                  //         color: Colors.black54,
                  //         borderRadius: BorderRadius.only(
                  //           topRight: Radius.circular(10),
                  //           bottomRight: Radius.circular(10),
                  //         )),
                  //   ),
                  // ),
                  // Expanded(
                  //     child: Padding(padding: EdgeInsets.all(12.0)),
                  //     child: LayoutBuilder(builder:
                  //         (BuildContext context, BoxConstraints constraints) {
                  //       return Flex(
                  //         direction: Axis.horizontal,
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         mainAxisSize: MainAxisSize.max,
                  //         children: List.generate(
                  //           (constraints.constrainWidth() / 15).floor(),
                  //           (index) => const SizedBox(
                  //               width: 5,
                  //               height: 1,
                  //               child: DecoratedBox(
                  //                 decoration:
                  //                     BoxDecoration(color: Colors.white),
                  //               )),
                  //         ),
                  //       );
                  //     })),
                  // const SizedBox(
                  //   height: 20,
                  //   width: 10,
                  //   child: DecoratedBox(
                  //     decoration: BoxDecoration(
                  //         color: Colors.black54,
                  //         borderRadius: BorderRadius.only(
                  //           topLeft: Radius.circular(10),
                  //           bottomLeft: Radius.circular(10),
                  //         )),
                  //   ),
                  // ),
                  // ],
                  ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 10, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(ticket['date'],
                                style: Styles.headLineStyle3
                                    .copyWith(color: Colors.black54)),
                            const Gap(10),
                            Text('DATE',
                                style: Styles.headLineStyle4
                                    .copyWith(color: Colors.black54)),
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(ticket['depature_time'],
                                style: Styles.headLineStyle3
                                    .copyWith(color: Colors.black54)),
                            const Gap(10),
                            Text('TIME',
                                style: Styles.headLineStyle4
                                    .copyWith(color: Colors.black54)),
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(ticket['number'],
                                style: Styles.headLineStyle3
                                    .copyWith(color: Colors.black54)),
                            const Gap(10),
                            Text('NUMBER',
                                style: Styles.headLineStyle4
                                    .copyWith(color: Colors.black54)),
                          ]),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
