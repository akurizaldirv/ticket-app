import 'package:flutter/material.dart';

class HalfDot extends StatelessWidget {
  final Color color;
  final bool isReverse;
  final int height;
  const HalfDot(
      {super.key,
      required this.color,
      required this.isReverse,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: height / 2,
      height: height.toDouble(),
      child: DecoratedBox(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(!isReverse ? height/2 : 0),
                bottomRight: Radius.circular(!isReverse ? height/2 : 0),
                bottomLeft: Radius.circular(isReverse ? height/2 : 0),
                topLeft: Radius.circular(isReverse ? height/2 : 0),
              ), color: color)),
    );
  }
}
