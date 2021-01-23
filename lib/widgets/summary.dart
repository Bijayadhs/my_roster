import 'package:flutter/material.dart';
import 'package:my_roster/constants.dart';

class Summary extends StatefulWidget {
  @override
  _SummaryState createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: rosterColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Total In Summary",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple[600],
                ),
              ),
              SizedBox(height: 10),
              Text('Work Day: 48hrs'),
              Text('Est. Hours: 48hrs'),
            ],
          ),
        ),
      ),
    );
  }
}
