import 'package:flutter/material.dart';

Color primary = const Color.fromARGB(255, 79, 105, 234);
Color secondary = const Color.fromARGB(255, 237, 18, 100);
Color text = const Color.fromARGB(255, 63, 62, 62);
Color disabled = const Color.fromARGB(255, 165, 165, 165);
Color background = const Color.fromARGB(255, 245, 245, 245);

class AppStyles {
  static Color primaryColor = primary;
  static Color secondaryColor = secondary;
  static Color textColor = text;
  static Color disabledColor = disabled;
  static Color backgroundColor = background;

  static TextStyle headline1 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: AppStyles.textColor,
  );
  static TextStyle headline2 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w600,
    color: AppStyles.textColor,
  );
  static TextStyle headline3 =
      const TextStyle(fontSize: 20, fontWeight: FontWeight.w400);
}
