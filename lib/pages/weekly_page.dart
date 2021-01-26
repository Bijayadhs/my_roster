import 'package:flutter/material.dart';
import 'package:my_roster/model/weekdays.dart';
import 'package:my_roster/widgets/seven_day.dart';
import 'package:my_roster/widgets/summary.dart';
import 'package:my_roster/widgets/title_widget.dart';

class WeeklyPage extends StatefulWidget {
  @override
  _WeeklyPageState createState() => _WeeklyPageState();
}

class _WeeklyPageState extends State<WeeklyPage> {
  int selectedIndex = 0;
  int pages = fromToWeeks.length;
  PageController _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleWidget(
          greeting: 'Hey',
          title: 'Bijay',
          message: 'You weekly shift',
        ),
        Expanded(
          child: PageView.builder(
            controller: _controller,
            onPageChanged: (index) => setState(() => selectedIndex = index),
            itemCount: pages,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => setState(() {
                          _controller.animateToPage(
                            --selectedIndex,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                        }),
                        icon: Icon(Icons.chevron_left),
                      ),
                      Text(
                        fromToWeeks[index].weekTitle,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      IconButton(
                        onPressed: () => setState(() {
                          _controller.animateToPage(
                            ++selectedIndex,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                          print(selectedIndex);
                        }),
                        icon: Icon(Icons.chevron_right),
                      ),
                    ],
                  ),
                  Expanded(
                    child: SevenDay(index: index),
                  ),
                ],
              );
            },
          ),
        ),
        Summary(),
      ],
    );
  }
}
