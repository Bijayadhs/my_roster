// import 'package:flutter/foundation.dart';

// enum weekday { Mon, Tue, Wed, Thurs, Fri, Sat, Sun }
List<String> months = ['Jan', 'Feb', 'Mar'];

class WeekDays {
  final String week;
  final int day;
  final String month;
  final int startTime;
  final int endTime;
  bool checked = false;
  WeekDays(
    this.day,
    this.week,
    this.month,
    this.startTime,
    this.endTime,
    this.checked,
  );
}

List<WeekDays> currentWeek = [
  WeekDays(18, 'Mon', 'Jan', 7, 16, false),
  WeekDays(19, 'Tue', 'Jan', 8, 17, true),
  WeekDays(20, 'Wed', 'Jan', 8, 17, false),
  WeekDays(21, 'Thurs', 'Jan', 8, 17, false),
  WeekDays(22, 'Fri', 'Jan', 8, 17, false),
  WeekDays(23, 'Sat', 'Jan', 8, 17, false),
  WeekDays(24, 'Sun', 'Jan', 8, 17, false),
];

class FromToWeek {
  final String weekTitle;
  final List<WeekDays> week;
  FromToWeek(
    this.weekTitle,
    this.week,
  );
}

List<FromToWeek> fromToWeeks = [
  FromToWeek('From 21 To 26', [
    WeekDays(18, 'Mon', 'Jan', 7, 16, false),
    WeekDays(19, 'Tue', 'Jan', 8, 17, true),
    WeekDays(20, 'Wed', 'Jan', 8, 17, false),
    WeekDays(21, 'Thurs', 'Jan', 8, 17, false),
    WeekDays(22, 'Fri', 'Jan', 8, 17, false),
    WeekDays(23, 'Sat', 'Jan', 8, 17, false),
    WeekDays(24, 'Sun', 'Jan', 8, 17, false),
  ]),
  FromToWeek('From 26 To 03', [
    WeekDays(18, 'Mon', 'Jan', 7, 16, false),
    WeekDays(19, 'Tue', 'Jan', 8, 17, true),
    WeekDays(20, 'Wed', 'Jan', 8, 17, false),
    WeekDays(21, 'Thurs', 'Jan', 8, 17, false),
    WeekDays(22, 'Fri', 'Jan', 8, 17, false),
    WeekDays(23, 'Sat', 'Jan', 8, 17, false),
    WeekDays(24, 'Sun', 'Jan', 8, 17, false),
  ]),
  FromToWeek('From 04 To 11', [
    WeekDays(18, 'Mon', 'Jan', 7, 16, false),
    WeekDays(19, 'Tue', 'Jan', 8, 17, true),
    WeekDays(20, 'Wed', 'Jan', 8, 17, false),
    WeekDays(21, 'Thurs', 'Jan', 8, 17, false),
    WeekDays(22, 'Fri', 'Jan', 8, 17, false),
    WeekDays(23, 'Sat', 'Jan', 8, 17, false),
    WeekDays(24, 'Sun', 'Jan', 8, 17, false),
  ]),
];
