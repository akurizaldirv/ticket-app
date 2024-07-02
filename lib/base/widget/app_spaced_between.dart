import 'package:flutter/material.dart';
import 'package:ticket_app/base/resource/styles/app_styles.dart';

class AppSpacedBetween extends StatelessWidget {
  const AppSpacedBetween({super.key, required this.title, required this.tag, required this.onTap});
  final String title;
  final String tag;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyles.headline2,
        ),
        InkWell(
          onTap: onTap,
          child: Text(tag, style: TextStyle(fontSize: 16, color: AppStyles.disabledColor),),
        )
      ],
    );
  }
}
