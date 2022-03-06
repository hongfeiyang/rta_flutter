import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomTimeParser {
  static final DateFormat rtaDateTimeParserFormatter =
      DateFormat('dd/MM/yyyy H:mm');
  static final dateFormatter = DateFormat('E HH:mm:ss dd/MM/yyyy');

  static String convertToTimeString(TimeOfDay? time) {
    return time != null
        ? DateFormat('HH:mm').format(DateTime(
            1900,
            1,
            1,
            time.hour,
            time.minute,
          ))
        : 'null';
  }

  static String convertToDateString(DateTime? time) {
    return time != null ? DateFormat('dd/MM/yyyy').format(time) : 'null';
  }

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

extension TimeOfDayComparator on TimeOfDay {
  double get toDouble => hour + minute / 60.0;
}
