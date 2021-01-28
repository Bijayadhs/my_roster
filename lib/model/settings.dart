import 'package:flutter/material.dart';

class Setting {
  final String settingName;
  final String defaultName;
  final IconData icon;
  const Setting({
    @required this.settingName,
    this.defaultName,
    this.icon,
  });
}

List<Setting> settings = [
  Setting(settingName: 'Week Start', defaultName: 'Mon'),
  Setting(settingName: 'Rate per hour', defaultName: '20'),
  Setting(settingName: 'Sound', defaultName: 'brilliant'),
  Setting(settingName: 'Theme', defaultName: 'green'),
  Setting(settingName: 'Reminder', defaultName: 'ON'),
  Setting(settingName: 'Backup'),
  Setting(settingName: 'Support'),
  Setting(settingName: 'About'),
];
