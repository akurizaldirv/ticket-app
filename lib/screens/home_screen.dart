import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';
import 'package:ticket_app/base/resource/media/app_media.dart';
import 'package:ticket_app/base/resource/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/utils/app_routes.dart';
import 'package:ticket_app/base/widget/app_spaced_between.dart';
import 'package:ticket_app/base/widget/hotel_view.dart';
import 'package:ticket_app/base/widget/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    var filteredTicketList = ticketList.where((ticket) => !ticket["isDone"]).toList();

    return Scaffold(
      backgroundColor: AppStyles.backgroundColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: AppStyles.headline3,
                        ),
                        Text("Book Tickets", style: AppStyles.headline1),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage(AppMedia.logo))),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white),
                  child: TextField(
                    controller: searchController,
                    decoration: const InputDecoration(
                        labelText: "Search",
                        isDense: true,
                        border: InputBorder.none,
                        prefixIcon:
                            Icon(FluentSystemIcons.ic_fluent_search_regular)),
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: AppSpacedBetween(
                    title: "Upcoming Flights",
                    tag: "View All",
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BottomNavBar(
                                  selectedIndex: 2,
                                )))),
              ),
              SizedBox(
                height: 190,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                    width: 10,
                  ),
                  itemCount: filteredTicketList.length < 5 ? filteredTicketList.length : 5,
                  itemBuilder: (BuildContext context, int index) {
                    final ticket = filteredTicketList[index];

                    return TicketView(ticket: ticket);
                  },
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: AppSpacedBetween(
                    title: "Hotels",
                    tag: "View All",
                    onTap: () =>
                        Navigator.pushNamed(context, AppRoutes.allTickets)),
              ),
              SizedBox(
                height: 330,
                child: ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext builder, int index) =>
                        HotelView(hotel: hotelList[index]),
                    separatorBuilder: (BuildContext builder, int index) =>
                        const SizedBox(
                          width: 10,
                        ),
                    itemCount: hotelList.length < 5 ? hotelList.length : 5),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
      // body: SafeArea(child: Text("Hello Home")),
    );
  }
}
