import 'package:flutter/material.dart';
import 'package:ticket_app/base/resource/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widget/ticket_view.dart';
import 'package:ticket_app/screens/ticket_details.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var upcomingTickets =
        ticketList.where((ticket) => !ticket["isDone"]).toList();
    var historyTickets =
        ticketList.where((ticket) => ticket["isDone"]).toList();

    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
              child: Text(
                "Your Tickets",
                style: AppStyles.headline1,
              ),
            ),
            Expanded(
              child: SizedBox(
                height: size.height,
                width: size.width,
                child: DefaultTabController(
                  length: 2,
                  child: Scaffold(
                    appBar: AppBar(
                      bottom: PreferredSize(
                        preferredSize: Size.zero,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      const BorderRadius.all(Radius.circular(20)),
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.white, width: 1.5)),
                              child: TabBar(
                                indicator: BoxDecoration(
                                    color: AppStyles.primaryColor,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20))),
                                indicatorSize: TabBarIndicatorSize.tab,
                                dividerColor: Colors.transparent,
                                labelColor: Colors.white,
                                unselectedLabelColor: AppStyles.disabledColor,
                                tabs: const [
                                  Tab(
                                    child: Text("Upcoming"),
                                  ),
                                  Tab(
                                    child: Text("History"),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    body: SizedBox(
                      height: size.height,
                      width: size.width,
                      child: TabBarView(
                        children: [
                          ListView.separated(
                            padding: const EdgeInsets.all(20),
                            itemCount: upcomingTickets.length,
                            separatorBuilder: (BuildContext builder, int index) =>
                                const SizedBox(
                              height: 10,
                            ),
                            itemBuilder: (BuildContext builder, int index) {
                              final ticket = upcomingTickets[index];
              
                              return TicketView(
                                ticket: ticket,
                                onTapFunc: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              TicketDetails(ticket: ticket)));
                                },
                              );
                            },
                          ),
                          ListView.separated(
                            padding: const EdgeInsets.all(20),
                            itemCount: historyTickets.length,
                            separatorBuilder: (BuildContext builder, int index) =>
                                const SizedBox(
                              height: 10,
                            ),
                            itemBuilder: (BuildContext builder, int index) {
                              final ticket = historyTickets[index];
              
                              return TicketView(ticket: ticket);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}