import 'package:flutter/material.dart';
import 'package:my_roster/model/weekdays.dart';
import 'package:my_roster/widgets/day_roster.dart';

class ThisWeekPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: currentWeek.length,
        itemBuilder: (context, index) => DayRoster(index: index),
      ),
    );
  }
}
