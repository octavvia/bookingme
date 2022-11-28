import 'package:bookingme/utils/app_layout.dart';
import 'package:bookingme/utils/app_styles.dart';
import 'package:bookingme/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /* showing blue part ticket */
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'],
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white)),
                      Expanded(
                        child: Container(),
                      ),
                      const ThickContainer(),
                      Expanded(
                        child: Stack(children: [
                          SizedBox(
                            height: 24,
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
                                      (index) => const SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: Colors.white),
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
                              .copyWith(color: Colors.white)),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(ticket['from']['city'],
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white)),
                      ),
                      Text(ticket['flying_time'],
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white)),
                      SizedBox(
                        width: 100,
                        child: Text(
                          ticket['to']['city'],
                          textAlign: TextAlign.end,
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white),
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
              color: Styles.orangeColor,
              child: Row(
                children: const [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )),
                    ),
                  ),
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
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: const BorderRadius.only(
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
                                    .copyWith(color: Colors.white)),
                            const Gap(10),
                            Text('DATE',
                                style: Styles.headLineStyle4
                                    .copyWith(color: Colors.white)),
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(ticket['depature_time'],
                                style: Styles.headLineStyle3
                                    .copyWith(color: Colors.white)),
                            const Gap(10),
                            Text('TIME',
                                style: Styles.headLineStyle4
                                    .copyWith(color: Colors.white)),
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(ticket['number'],
                                style: Styles.headLineStyle3
                                    .copyWith(color: Colors.white)),
                            const Gap(10),
                            Text('NUMBER',
                                style: Styles.headLineStyle4
                                    .copyWith(color: Colors.white)),
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
