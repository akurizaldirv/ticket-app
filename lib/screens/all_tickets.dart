import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widget/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Flights"),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: ticketList.length,
        itemBuilder: (BuildContext builder, int index) =>
            TicketView(ticket: ticketList[index]),
        separatorBuilder: (BuildContext builder, int index) => const SizedBox(
          height: 20,
        ),
      ),
    );
  }
}
