import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/resource/media/app_media.dart';
import 'package:ticket_app/base/resource/styles/app_styles.dart';
import 'package:ticket_app/base/widget/app_layout_builder.dart';
import 'package:ticket_app/base/widget/big_dot.dart';
import 'package:ticket_app/base/widget/half_dot.dart';

class TicketView extends StatelessWidget {
  final dynamic ticket;
  const TicketView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 190,
    // );
      child: Container(
        // padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.white),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 5),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            image: AssetImage(ticket["image"]))),
                  ),
                  const SizedBox(
                    width: 10,
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ticket["plane"],
                        style: AppStyles.headline3
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(ticket["date"])
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: [
                HalfDot(color: AppStyles.backgroundColor, isReverse: false, height: 20),
                const Expanded(child: AppLayoutBuilder(randomDivider: 20)),
                HalfDot(color: AppStyles.backgroundColor, isReverse: true, height: 20)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15, left: 20, right: 20),
              child: Flex(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                direction: Axis.horizontal,
                children: [
                  Flexible(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ticket["from"]["code"],
                          style: AppStyles.headline2,
                        ),
                        Text(
                          ticket["from"]["address"],
                          style: TextStyle(color: AppStyles.disabledColor),
                        ),
                        Text(
                          ticket["from"]["time"],
                          style: TextStyle(color: AppStyles.disabledColor),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                      child: Icon(
                        FluentSystemIcons.ic_fluent_airplane_filled,
                        color: AppStyles.disabledColor,
                      )),
                  Flexible(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          ticket["to"]["code"],
                          style: AppStyles.headline2,
                        ),
                        Text(
                          ticket["to"]["address"],
                          style: TextStyle(color: AppStyles.disabledColor),
                        ),
                        Text(
                          ticket["to"]["time"],
                          style: TextStyle(color: AppStyles.disabledColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
