import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';
import 'package:ticket_app/base/utils/app_routes.dart';
import 'package:ticket_app/screens/all_tickets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ticket App",
      routes: {
        AppRoutes.root: (context) => const BottomNavBar(),
        AppRoutes.allTickets: (context) => const AllTickets()
      },
      // home: BottomNavBar(),
    );
  }
}
