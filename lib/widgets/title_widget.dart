import 'package:flutter/material.dart';

import 'package:my_roster/constants.dart';

class TitleWidget extends StatelessWidget {
  final String greeting;
  final String title;
  final String message;
  const TitleWidget({
    Key key,
    this.greeting,
    this.title,
    this.message,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20),
          Text(
            greeting,
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w500,
              height: .1,
            ),
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: secondaryColor),
          ),
          SizedBox(height: 8),
          Text(
            message,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
