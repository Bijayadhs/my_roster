import 'package:flutter/material.dart';
import 'package:my_roster/constants.dart';
import 'package:my_roster/pages/settings_page.dart';
import 'package:my_roster/pages/thisweek_page.dart';
import 'package:my_roster/pages/weekly_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int today = 13;
  int index = 1;
  List<String> your = ['', 'Your Roster this week', 'Your Weekly Roster'];
  final pages = [SettingsPage(), ThisWeekPage(), WeeklyPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      bottomNavigationBar: buildBottomNavigationBar(),
      body: pages[index],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 4,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.menu),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            right: 20.0,
            top: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                '${today}th Janaury 2021',
                style: TextStyle(
                  color: highlightColor,
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ],
      // bottom: index == 0
      //     ? PreferredSize(
      //         preferredSize: Size.fromHeight(60),
      //         child: Text(
      //           'Settings',
      //           style: TextStyle(
      //             fontSize: 34,
      //             fontWeight: FontWeight.w500,
      //           ),
      //         ),
      //       )
      //     : PreferredSize(
      //         preferredSize: Size.fromHeight(120),
      //         child: Padding(
      //           padding: const EdgeInsets.only(right: 160),
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: <Widget>[
      //               index == 2
      //                   ? SizedBox(height: 0)
      //                   : Text(
      //                       'Hello,',
      //                       style: TextStyle(
      //                         fontSize: 34,
      //                         fontWeight: FontWeight.w500,
      //                         height: .1,
      //                       ),
      //                     ),
      //               Text(
      //                 'Bijaya',
      //                 style: TextStyle(
      //                     fontSize: 40,
      //                     fontWeight: FontWeight.w700,
      //                     color: secondaryColor),
      //               ),
      //               SizedBox(height: 8),
      //               Text(
      //                 your[index],
      //                 style:
      //                     TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
      //               ),
      //               SizedBox(height: 8),
      //             ],
      //           ),
      //         ),
      //       ),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: index,
      selectedItemColor: highlightColor,
      unselectedItemColor: secondaryColor.withOpacity(0.3),
      onTap: (index) => setState(() => this.index = index),
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: 'Settings'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.assignment_returned,
            ),
            label: 'This Week'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_view_day,
            ),
            label: 'Weekly'),
      ],
    );
  }
}
