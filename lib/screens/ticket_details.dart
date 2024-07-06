import 'package:barcode_widget/barcode_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ticket_app/base/resource/styles/app_styles.dart';
import 'package:ticket_app/base/utils/string_formatter.dart';
import 'package:ticket_app/base/widget/app_layout_builder.dart';
import 'package:ticket_app/base/widget/half_dot.dart';

class TicketDetails extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketDetails({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Ticket Detail", style: TextStyle(fontWeight: FontWeight.w500),),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              print(ticket);
            },
            icon: const Icon(
              FontAwesomeIcons.arrowUpRightFromSquare,
              size: 20,
            ),
          ),
        ],
      ),
      floatingActionButton: TextButton(
        onPressed: () {
          print("pressed");
        },
        style: TextButton.styleFrom(
            backgroundColor: AppStyles.primaryColor,
            foregroundColor: Colors.white,
            fixedSize: Size(size.width - 30, 50),
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: const Text(
          "Download",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          width: size.width,
          height: 510,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
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
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: AppLayoutBuilder(
                    randomDivider: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Flex(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
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
                              StringFormatter.formatDateHour(
                                  ticket["from"]["time".toString()]),
                              style: TextStyle(color: AppStyles.disabledColor),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        FluentSystemIcons.ic_fluent_airplane_filled,
                        color: AppStyles.disabledColor,
                      ),
                      Expanded(
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
                              StringFormatter.formatDateHour(
                                  ticket["to"]["time".toString()]),
                              style: TextStyle(color: AppStyles.disabledColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: AppLayoutBuilder(
                    randomDivider: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            ticket["seatNumber"],
                            style: AppStyles.headline3,
                          ),
                          Text(
                            "Seat Number",
                            style: TextStyle(color: AppStyles.disabledColor),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            ticket["class"],
                            style: AppStyles.headline3,
                          ),
                          Text(
                            "Class",
                            style: TextStyle(color: AppStyles.disabledColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    HalfDot(
                        color: AppStyles.backgroundColor,
                        isReverse: false,
                        height: 20),
                    const Expanded(child: AppLayoutBuilder(randomDivider: 20)),
                    HalfDot(
                        color: AppStyles.backgroundColor,
                        isReverse: true,
                        height: 20)
                  ],
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        BarcodeWidget(
                          data: ticket["ticketId"],
                          barcode: Barcode.code128(),
                          drawText: false,
                          height: 100,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Ticked ID",
                              style: TextStyle(
                                  color: AppStyles.disabledColor, fontSize: 16),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              StringFormatter.formatStringWithSpaces(
                                  ticket["ticketId"]),
                              style: const TextStyle(fontSize: 16),
                            ),
                            IconButton(
                              onPressed: () {
                                Clipboard.setData(
                                        ClipboardData(text: ticket["ticketId"]))
                                    .then((_) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(content: Text("Copied to Clipboard!"))
                                  );
                                });
                              },
                              icon: Icon(
                                FluentSystemIcons.ic_fluent_copy_regular,
                                size: 20,
                                color: AppStyles.disabledColor,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
