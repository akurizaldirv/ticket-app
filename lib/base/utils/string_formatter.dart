import 'package:intl/intl.dart';

class StringFormatter {
  static String formatDateHour(int miliseconds) {
    DateTime dateObj = DateTime.fromMillisecondsSinceEpoch(miliseconds);
    String date = DateFormat.MMMd().format(dateObj);
    String hour = DateFormat.jm().format(dateObj);

    return "$hour, $date";
  }

  static String formatStringWithSpaces(String text) {
    final regExp = RegExp(r".{4}");
    return regExp
        .allMatches(text)
        .map((m) => m.group(0)!)
        .join(' '); // join with a space delimiter
  }
}
