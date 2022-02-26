import 'package:intl/intl.dart';

final DateFormat customDateTimeFormatter = DateFormat('dd/MM/yyyy H:mm');

class CustomeTimeParser {
  static DateTime? parseRTADateTime(String string) {
    try {
      final res = customDateTimeFormatter.parse(string);
      return res;
    } catch (e) {
      print('Error parsing time');
      return null;
    }
  }
}
