import 'package:weather/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// This is our  main focus
// Let's apply light and dark theme on our app
// Now let's add dark theme on our app

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: PrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: ContentColorLightTheme),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: ContentColorLightTheme),
    colorScheme: ColorScheme.light(
      primary: PrimaryColor,
      secondary: SecondaryColor,
      error: ErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: ContentColorLightTheme.withOpacity(0.7),
      unselectedItemColor: ContentColorLightTheme.withOpacity(0.32),
      selectedIconTheme: IconThemeData(color: PrimaryColor),
      showUnselectedLabels: true,
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  // Bydefault flutter provie us light and dark theme
  // we just modify it as our need
  return ThemeData.dark().copyWith(
    primaryColor: PrimaryColor,
    scaffoldBackgroundColor: ContentColorLightTheme,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: ContentColorDarkTheme),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: ContentColorDarkTheme),
    colorScheme: ColorScheme.dark().copyWith(
      primary: PrimaryColor,
      secondary: SecondaryColor,
      error: ErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ContentColorLightTheme,
      selectedItemColor: Colors.white70,
      unselectedItemColor: ContentColorDarkTheme.withOpacity(0.32),
      selectedIconTheme: IconThemeData(color: PrimaryColor),
      showUnselectedLabels: true,
    ),
  );
}

final appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);
