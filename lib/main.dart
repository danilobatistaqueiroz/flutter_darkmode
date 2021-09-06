import 'package:flutter/material.dart';
import 'package:sublime_player/dashboard.dart';
import 'package:sublime_player/player.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

final _darkNotifier = ValueNotifier(ThemeMode.light);

class SwitchTheme {
  final darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.black,
    brightness: Brightness.dark,
    backgroundColor: const Color(0xFF212121),
    accentColor: Colors.white,
    accentIconTheme: IconThemeData(color: Colors.black),
    dividerColor: Colors.black12,
  );

  final lightTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.white,
    brightness: Brightness.light,
    backgroundColor: const Color(0xFFE5E5E5),
    accentColor: Colors.black,
    accentIconTheme: IconThemeData(color: Colors.white),
    dividerColor: Colors.white54,
  );

  late ThemeData _themeData;

  ThemeData getTheme() => _themeData;
  ThemeData getLightTheme() => lightTheme;
  ThemeData getDarkTheme() => darkTheme;

  void setDarkMode() async {
    _themeData = darkTheme;
  }

  void setLightMode() async {
    _themeData = lightTheme;
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

  static _MyAppState? of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: _darkNotifier,
        builder: (BuildContext context, ThemeMode mode, Widget? child) {
          return MaterialApp(
              theme: ThemeData(),
              darkTheme: ThemeData.dark(),
              themeMode: mode,
              home: Home.dark(_darkNotifier, mode),
              routes: {
                '/player': (_) => Player(),
                '/dashboard': (_) => Dashboard()
              });
        });
  }
}
