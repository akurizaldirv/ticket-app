import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/resource/media/app_media.dart';
import 'package:ticket_app/base/resource/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widget/app_spaced_between.dart';
import 'package:ticket_app/base/widget/custom_text_field.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    TextEditingController planeDepartureController = TextEditingController();
    TextEditingController planeArrivalController = TextEditingController();
    TextEditingController hotelCheckinController = TextEditingController();
    TextEditingController hotelCheckoutController = TextEditingController();

    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
            child: Text(
              "What are you looking for?",
              style: AppStyles.headline1.copyWith(fontSize: 36),
            ),
          ),
          SizedBox(
            width: size.width,
            height: 270,
            child: DefaultTabController(
              length: 2,
              child: Scaffold(
                appBar: AppBar(
                  bottom: PreferredSize(
                    preferredSize: Size.zero,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        height: 40,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.white, width: 1.5)),
                        child: TabBar(
                          indicator: BoxDecoration(
                              color: AppStyles.primaryColor,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              )),
                          indicatorSize: TabBarIndicatorSize.tab,
                          dividerColor: Colors.transparent,
                          labelColor: Colors.white,
                          unselectedLabelColor: AppStyles.disabledColor,
                          tabs: const [
                            Tab(
                              child: Text("Airplane"),
                            ),
                            Tab(
                              child: Text("Hotel"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                body: SizedBox(
                  height: 280,
                  child: TabBarView(children: [
                    Row(children: [
                      SizedBox(
                        height: 280,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              CustomTextField(
                                  controller: hotelCheckinController,
                                  name: "Departure",
                                  prefixIcon: const Icon(
                                    Icons.flight_takeoff,
                                    size: 22,
                                  )),
                              CustomTextField(
                                  controller: hotelCheckoutController,
                                  name: "Arrival",
                                  prefixIcon: const Icon(
                                    Icons.flight_land,
                                    size: 22,
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              TextButton(
                                  onPressed: () => print(
                                      "Hotel: ${planeDepartureController.text} - ${planeArrivalController.text}"),
                                  style: TextButton.styleFrom(
                                    backgroundColor: AppStyles.primaryColor,
                                  ),
                                  child: SizedBox(
                                    width: size.width,
                                    child: Text(
                                      "Search Ticket",
                                      textAlign: TextAlign.center,
                                      style: AppStyles.buttonText.copyWith(
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ]),
                    Row(children: [
                      SizedBox(
                        height: 280,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              CustomTextField(
                                  controller: hotelCheckinController,
                                  name: "Departure",
                                  prefixIcon: const Icon(
                                    FluentSystemIcons
                                        .ic_fluent_calendar_starred_regular,
                                    size: 22,
                                  )),
                              CustomTextField(
                                  controller: hotelCheckoutController,
                                  name: "Arrival",
                                  prefixIcon: const Icon(
                                    FluentSystemIcons
                                        .ic_fluent_calendar_overdue_regular,
                                    size: 22,
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              TextButton(
                                  onPressed: () => print(
                                      "Hotel: ${hotelCheckinController.text} - ${hotelCheckoutController.text}"),
                                  style: TextButton.styleFrom(
                                    backgroundColor: AppStyles.primaryColor,
                                  ),
                                  child: SizedBox(
                                    width: size.width,
                                    child: Text(
                                      "Search Hotel",
                                      textAlign: TextAlign.center,
                                      style: AppStyles.buttonText.copyWith(
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ])
                  ]),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: AppSpacedBetween(
                title: "Popular Hotel",
                tag: "View All",
                onTap: () => print("navigate")),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Container(
                  height: 330,
                  decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Container(
                    // height: 300,
                    width: (size.width - 40) * 0.47,
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage(AppMedia.hotel2),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                hotelList[0]["title"],
                                style:
                                    AppStyles.headline2.copyWith(fontSize: 24),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(hotelList[0]["address"]),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: (size.width - 40) * 0.06,
                ),
                SizedBox(
                  height: 330,
                  width: (size.width - 40) * 0.47,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppStyles.secondaryColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: Stack(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(20),
                                child: Text(
                                  "Luxury Meets Comfort",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 32,
                                      height: 1.2,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Positioned(
                                bottom: -30,
                                right: -30,
                                child: Container(
                                  padding: const EdgeInsets.all(30),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 18, color: Colors.black),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: (size.width - 40) * 0.06,
                      ),
                      Container(
                        height: 100,
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Padding(
                          padding: EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                FluentSystemIcons.ic_fluent_duo_tablet_regular,
                                color: Colors.white,
                                size: 60,
                              ),
                              Icon(
                                FluentSystemIcons.ic_fluent_bed_regular,
                                color: Colors.white,
                                size: 60,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
