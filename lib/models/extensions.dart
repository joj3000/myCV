import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

/// https://api.flutter.dev/flutter/intl/DateFormat-class.html
extension DateTimeExtension on DateTime {
  String format([String pattern = 'MMM yyyy', String? locale]) {
    if (locale != null && locale.isNotEmpty) {
      initializeDateFormatting(locale);
    }
    return DateFormat(pattern, locale).format(this).toUpperCase();
  }
}
