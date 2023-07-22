import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

DateTime isoDateToDateTime(String? date) {
  // print('========');
  // print(date);
  // print('========');
  if (date == null || date == '') {
    return DateTime.now();
  } else {
    // return DateTime.parse(date).toLocal();
    return DateTime.parse(date).toLocal();
  }
}

String dateFormatUsToPeriodMonth(String string) {
  return DateFormat('yyyyMMdd')
      .format(DateFormat.yMMMMd('en_US').parse(string));
}

String periodMonthToDateFormatUs(String string) {
  final dateTime = DateTime.parse(
    '${string.substring(0, 4)}-'
    '${string.substring(4, 6)}-'
    '${string.substring(6, 8)}',
  );
  return DateFormat.yMMMMd('en_US').format(dateTime);
}

extension DateTimeExtension on DateTime {
  bool get isWeekend {
    final weekday = this.weekday;
    return [7, 6].contains(weekday);
  }
}

extension TimeOfDayExtension on TimeOfDay {
  String get toTime {
    return '${hour.toString().padLeft(2, '0')}:'
        '${minute.toString().padLeft(2, '0')}';
  }
}
