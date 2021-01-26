import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> settings = [
      'Week Start',
      'Rate per hour',
      'Sound',
      'Theme',
      'Reminder',
      'Backup',
      'Support',
      'About'
    ];
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Settings',
            style: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.w700,
              color: Colors.purple[300],
            ),
          ),
          SizedBox(height: 20),
          Column(
            children: settings
                .map((setting) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          setting,
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        Divider(
                          height: 40,
                          thickness: 2,
                          endIndent: MediaQuery.of(context).size.width * 0.5,
                        ),
                      ],
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
