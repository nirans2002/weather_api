import 'package:flutter/material.dart';
import 'package:weather/screens/home_page.dart';
import 'package:weather/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      // themeMode: ThemeMode.system,
      themeMode: ThemeMode.dark,

      home: HomePage(),
    );
  }
}
