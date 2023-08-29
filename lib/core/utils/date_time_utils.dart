import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

const String dateTimeFormatPattern = 'dd/MM/yyyy';

extension DateTimeExtension on DateTime {
  /// Return a string representing [date] formatted according to our locale
  String format([
    String pattern = dateTimeFormatPattern,
    String? locale,
  ]) {
    if (locale != null && locale.isNotEmpty) {
      initializeDateFormatting(locale);
    }
    return DateFormat(pattern, locale).format(this);
  }
}

 void setNextMonday(BuildContext context, TextEditingController controller) {
  DateTime currentDate = DateTime.now();
  int daysUntilNextMonday = DateTime.monday - currentDate.weekday + 7;
  DateTime nextMonday = currentDate.add(Duration(days: daysUntilNextMonday));
  String formattedDate = DateFormat('d MMM, yyyy').format(nextMonday);
  controller.text = formattedDate;
  Navigator.pop(context);
}

void setNextTuesday(BuildContext context, TextEditingController controller) {
  DateTime currentDate = DateTime.now();
  int daysUntilNextTuesday = DateTime.tuesday - currentDate.weekday + 7;
  DateTime nextTuesday =
      currentDate.add(Duration(days: daysUntilNextTuesday));

  String formattedDate = DateFormat('d MMM, yyyy').format(nextTuesday);
  controller.text = formattedDate;
  Navigator.pop(context);
}

void setNextWeek(BuildContext context, TextEditingController controller) {
  DateTime currentDate = DateTime.now();
  DateTime nextWeek = currentDate.add(Duration(days: 7));

  String formattedDate = DateFormat('d MMM, yyyy').format(nextWeek);
  controller.text = formattedDate;
  Navigator.pop(context);
}