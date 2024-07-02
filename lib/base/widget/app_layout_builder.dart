import 'package:flutter/material.dart';
import 'package:ticket_app/base/resource/styles/app_styles.dart';

class AppLayoutBuilder extends StatelessWidget {
  const AppLayoutBuilder({super.key, required this.randomDivider});
  final int randomDivider;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) => Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  (constraints.constrainWidth() / randomDivider).floor(),
                  (index) => SizedBox(
                        width: randomDivider / 1.5,
                        height: 2,
                        child: DecoratedBox(
                          decoration:
                              BoxDecoration(color: AppStyles.backgroundColor),
                        ),
                      )),
            ));
  }
}
