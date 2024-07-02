import 'package:flutter/material.dart';

class BigDot extends StatelessWidget {
  final Color innerColor;
  final Color outerColor;

  const BigDot({super.key, required this.innerColor, required this.outerColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: outerColor),
        child: Center(
          child: SizedBox(
            width: 10,
            height: 10,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: innerColor, borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ));
  }
}
