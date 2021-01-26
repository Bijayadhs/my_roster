import 'package:flutter/material.dart';
import 'package:my_roster/model/weekdays.dart';

class DayRoster extends StatefulWidget {
  @override
  _DayRosterState createState() => _DayRosterState();
}

class _DayRosterState extends State<DayRoster> {
  @override
  Widget build(BuildContext context) {
    final List<WeekDays> current = currentWeek;

    return ListView.builder(
      itemCount: currentWeek.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 20, left: 12, right: 12),
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.purple[300],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              top: 4,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      current[index].week,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        current[index].day.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      current[index].startTime.toString(),
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '-',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      current[index].endTime.toString(),
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                IconButton(
                  iconSize: 32,
                  color: Colors.green[300],
                  icon: current[index].checked
                      ? Icon(Icons.check_circle)
                      : Icon(Icons.check_circle_outline),
                  onPressed: () {
                    return !current[index].checked;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
