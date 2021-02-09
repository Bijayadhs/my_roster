import 'package:flutter/material.dart';
import 'package:my_roster/constants.dart';
import 'package:my_roster/model/weekdays.dart';

class SevenDay extends StatefulWidget {
  final int index;
  const SevenDay({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  _SevenDayState createState() => _SevenDayState();
}

class _SevenDayState extends State<SevenDay> {
  @override
  Widget build(BuildContext context) {
    // FromToWeek c = fromToWeeks.currentWeek[widget.index];
    // bool check = c.checked;
    // bool changeState(check) {
    //   return !check;
    // }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mata',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Rani',
                      // c.day.toString(),
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
                    'ki',
                    // c.startTime.toString(),
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
                    'jai',
                    // c.endTime.toString(),
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
                icon:
                    // check ?
                    Icon(Icons.check_circle),
                // : Icon(Icons.check_circle_outline),
                onPressed: () {
                  // changeState(check);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
