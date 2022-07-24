import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

enum ThemeTypes { light, dark, pink, purple, green, orange, amber }

final appThemes = <ThemeTypes, ThemeData>{
  ThemeTypes.light: ThemeData.light(),
  ThemeTypes.dark: ThemeData.dark(),
  ThemeTypes.amber: ThemeData(
    primarySwatch: Colors.amber,
  ),
  ThemeTypes.purple: ThemeData(
    primarySwatch: Colors.purple,
  ),
  ThemeTypes.orange: ThemeData(
    primarySwatch: Colors.orange,
  ),
  ThemeTypes.green: ThemeData(
    primarySwatch: Colors.green,
  ),
  ThemeTypes.pink: ThemeData(
    primarySwatch: Colors.pink,
  ),
};

class ThemeManager extends ChangeNotifier {
  ThemeTypes _currentThemeType = ThemeTypes.light;
  final key = 'sajjad';
  ThemeManager() {
    _loadTheme();
  }

  void _loadTheme() async {
    var pref = await SharedPreferences.getInstance();
    _currentThemeType =
        ThemeTypes.values[pref.getInt(key) ?? 0]; //??ThemeTypes.light;
  }

  ThemeData get themeData => appThemes[_currentThemeType]!;
  ThemeTypes get currentThemeType => _currentThemeType;
  void setCurrentThemeType(ThemeTypes themeTypes) async {
    _currentThemeType = themeTypes;
    var pref = await SharedPreferences.getInstance();
    pref.setInt(key, _currentThemeType.index);
    notifyListeners();
  }
}
