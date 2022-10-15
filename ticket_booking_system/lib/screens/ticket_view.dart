import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_system/utils/app_layout.dart';
import 'package:ticket_booking_system/utils/app_style.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Container(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.blue.shade500,
            ),
            child: Column(children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "NYC",
                    style: Styles.headLineStyle3,
                  ),
                  Icon(FluentSystemIcons.ic_fluent_airplane_filled),
                  Text(
                    "LDN",
                    style: Styles.headLineStyle3,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                  Text(
                    "new-york",
                    style: Styles.inColorText,
                  ),
                  Text(
                    "8H 30M",
                    style: Styles.inColorText,
                  ),
                  Text(
                    "London",
                    style: Styles.inColorText,
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                  "----------------------------------------------------------------------------------"),
            ]),
          )
        ]),
      ),
    );
  }
}
