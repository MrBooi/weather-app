import 'package:date_format/date_format.dart';

class CurrentDate {
  static String todaysDate() {
    var date = DateTime.now();
    return '${weekday(date.weekday)}, ${formatDate(
      date,
      [d, ' ', M, ' ', yyyy],
    )}';
  }

  static String weekday(int weekday) {
    switch (weekday) {
      case 1:
        return "Mon";
      case 2:
        return "Tue";
      case 3:
        return "Wed";
      case 4:
        return "Thur";
      case 5:
        return "Fri";
      case 6:
        return "Sat";
      case 7:
        return "Sun";
      default:
        return 'invalid weekday';
    }
  }
}
