import 'package:intl/intl.dart';

class CustomTimeParser {
  static final DateFormat rtaDateTimeParserFormatter =
      DateFormat('dd/MM/yyyy H:mm');
  static final dateFormatter = DateFormat('E HH:mm:ss dd/MM/yyyy');

  static DateTime? parseRTADateTime(String string) {
    try {
      final res = rtaDateTimeParserFormatter.parse(string);
      return res;
    } catch (e) {
      print('Error parsing time');
      return null;
    }
  }
}
