import 'package:flutter/material.dart';
import 'package:my_roster/model/weekdays.dart';

class DayRoster extends StatefulWidget {
  final int index;
  const DayRoster({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  _DayRosterState createState() => _DayRosterState();
}

class _DayRosterState extends State<DayRoster> {
  @override
  Widget build(BuildContext context) {
    WeekDays c = currentWeek[widget.index];
    bool check = c.checked;
    bool changeState(check) {
      return !check;
    }

    print(check);

    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 12, right: 12),
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.purple[300],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    c.week,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      c.day.toString(),
                      style: TextStyle(
                        fontSize: 30,
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
                    c.startTime.toString(),
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
                    c.endTime.toString(),
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
                icon: check
                    ? Icon(Icons.check_circle)
                    : Icon(Icons.check_circle_outline),
                onPressed: () {
                  changeState(check);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
