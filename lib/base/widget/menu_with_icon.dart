import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/resource/styles/app_styles.dart';

class MenuWithIcon extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? description;
  final VoidCallback? onTapFunc;
  const MenuWithIcon(
      {super.key,
      required this.icon,
      required this.title,
      this.description,
      this.onTapFunc});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      onTap: onTapFunc ?? () {},
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Icon(icon, size: 24),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style:
                        AppStyles.headline3.copyWith(fontWeight: FontWeight.w500),
                  ),
                  description != null ? Text(description!) : Container(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
