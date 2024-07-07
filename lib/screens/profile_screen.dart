import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ticket_app/base/resource/media/app_media.dart';
import 'package:ticket_app/base/resource/styles/app_styles.dart';
import 'package:ticket_app/base/widget/menu_with_icon.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
            child: Text(
              "My Profile",
              style: AppStyles.headline1,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            height: 150,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [AppStyles.primaryColor, AppStyles.secondaryColor],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(AppMedia.logo),
                  backgroundColor: Colors.white,
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Akhmad Rizaldi Irvana",
                      style: AppStyles.headline2
                          .copyWith(fontSize: 22, color: Colors.white),
                    ),
                    const Text(
                      "ID: 1111 2222 3333 4444",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: MenuWithIcon(
                  icon: FluentSystemIcons.ic_fluent_person_available_filled,
                  title: "Profile Details",
                  description: "View your profile information")),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: MenuWithIcon(
                  icon: FluentSystemIcons.ic_fluent_apps_add_in_filled,
                  title: "Add Nominee",
                  description: "Add a third person of  your account in case of unexpected event")),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: MenuWithIcon(
                  icon: FluentSystemIcons.ic_fluent_contact_card_filled,
                  title: "Bank Account",
                  description: "Manage all your linked and save bank account")),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: MenuWithIcon(
                  icon: FluentSystemIcons.ic_fluent_sign_out_filled,
                  title: "Signout",
                  description: "")),
        ],
      ),
    );
  }
}
