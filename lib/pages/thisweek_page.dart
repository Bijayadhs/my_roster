import 'package:flutter/material.dart';
import 'package:my_roster/widgets/day_roster.dart';
import 'package:my_roster/widgets/title_widget.dart';

class ThisWeekPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleWidget(
          greeting: 'Hello',
          title: 'Bijaya',
          message: 'You roster this week',
        ),
        Expanded(child: DayRoster()),
      ],
    );
  }
}
