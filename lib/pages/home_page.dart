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
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green[200],
                ),
                currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.green[500],
                    maxRadius: 5,
                    child: Icon(Icons.person)),
                accountName: Text('Bijaya'),
                accountEmail: Text('bijay@gmail.com')),
            CustomListTile(
              Icons.next_week,
              'My week',
            ),
            CustomListTile(
              Icons.settings,
              'Settings',
            ),
          ],
        ),
      ),
      appBar: buildAppBar(),
      bottomNavigationBar: buildBottomNavigationBar(),
      body: pages[index],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 4,
      // leading: IconButton(
      //   onPressed: () {},
      //   icon: Icon(Icons.menu),
      // ),
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

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  // final Function onTap;
  const CustomListTile(
    this.icon,
    this.title,
    // this.onTap,
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.green[50],
      onTap: () {},
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
      ),
    );
  }
}
