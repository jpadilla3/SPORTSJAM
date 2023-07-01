import 'package:intl/intl.dart';

class Date {
  currentDate() {
    DateTime time = DateTime.now();
    String time2 = time.toString().substring(0, 10);

    return time2;
  }

  static time(String time) {
    time = time.substring(0, 19);

    time = DateFormat.jm().format(DateTime.parse(time));

    return time;
  }
}
