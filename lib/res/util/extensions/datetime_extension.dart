import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime? {
  String defaultFormat([String format = 'EEE, d MMM y']) {
    if (this == null) {
      return '';
    }
    return DateFormat(format).format(this!);
  }

  String hourFormat([String format = 'HH:mm']) {
    return defaultFormat(format);
  }

  TimeOfDay? get convertToTimeOfDay {
    if (this == null) {
      return null;
    }
    return TimeOfDay(hour: this!.hour, minute: this!.day);
  }
}

extension TimeExtension on TimeOfDay {
  String defaultFormat([String format = 'HH:mm']) {
    return DateFormat(format)
        .format(DateTime.now().copyWith(hour: hour, minute: minute));
  }
}
