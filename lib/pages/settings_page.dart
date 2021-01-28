import 'package:flutter/material.dart';
import 'package:my_roster/model/settings.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
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
          SizedBox(height: 10),
          Container(
            height: 450,
            child: ListView.builder(
              // shrinkWrap: true,
              controller: controller,
              physics: BouncingScrollPhysics(),
              itemCount: settings.length,
              itemBuilder: (context, index) =>
                  CustomSetup(setting: settings[index]),
            ),
          )
        ],
      ),
    );
  }
}

class CustomSetup extends StatelessWidget {
  final Setting setting;
  const CustomSetup({this.setting});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                setting.settingName,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Container(
                width: size.width * 0.4,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: setting.defaultName,
                    labelText: setting.settingName,
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          Divider(
            height: 34,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
