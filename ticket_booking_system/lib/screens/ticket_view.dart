import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_system/screens/widget/thick_container.dart';
import 'package:ticket_booking_system/utils/app_layout.dart';
import 'package:ticket_booking_system/utils/app_style.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: size.height,
      child: Container(
        padding: const EdgeInsets.only(right: 16),
        child: Column(children: [
          // showing the blue side of the ticket
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(21),
                topRight: Radius.circular(21),
              ),
              color: Colors.blueGrey.shade500,
            ),
            child: Column(children: [
              Row(
                children: [
                  Text(
                    "NYC",
                    style: Styles.headLineStyle3.copyWith(color: Colors.white),
                  ),
                  const Spacer(),
                  const ThickContainer(),
                  Expanded(
                      child: Stack(
                    children: [
                      SizedBox(
                        height: 24,
                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  (constraints.constrainWidth() / 5).floor(),
                                  (index) => const SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.white)),
                                      )),
                            );
                          },
                        ),
                      ),
                      const Center(
                        child: Icon(
                          FluentSystemIcons.ic_fluent_airplane_filled,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )),
                  const ThickContainer(),
                  const Spacer(),
                  Text(
                    "LDN",
                    style: Styles.headLineStyle3.copyWith(color: Colors.white),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 100,
                    child: Text(
                      "New-York",
                      style: Styles.inColorText,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Text(
                    "8H 30M",
                    style: Styles.inColorText,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: 100,
                    child: Text(
                      "London",
                      style: Styles.inColorText,
                      textAlign: TextAlign.end,
                    ),
                  )
                ],
              ),
            ]),
          ),
          // showing the orange side of the ticket
          Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)))),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => const SizedBox(
                                    width: 5,
                                    height: 1,
                                    child: DecoratedBox(
                                        decoration:
                                            BoxDecoration(color: Colors.white)),
                                  )),
                        );
                      },
                    ),
                  )),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)))),
                  ),
                ],
              )),

          // showing the bottom part of the ticket

          Container(
            padding:
                const EdgeInsets.only(left: 16, top: 9, right: 16, bottom: 9),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(21),
                bottomRight: Radius.circular(21),
              ),
              color: Styles.orangeColor,
            ),
            child: Column(children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1 May",
                        style: Styles.textStyle.copyWith(color: Colors.white),
                      ),
                      Text(
                        "Date",
                        style:
                            Styles.headLineStyle4.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "08:00 AM",
                        style: Styles.textStyle.copyWith(color: Colors.white),
                      ),
                      Text(
                        "Departure Time",
                        style:
                            Styles.headLineStyle4.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "23",
                        style: Styles.textStyle.copyWith(color: Colors.white),
                      ),
                      Text(
                        "Seat Number",
                        style:
                            Styles.headLineStyle4.copyWith(color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ]),
          )
        ]),
      ),
    );
  }
}
