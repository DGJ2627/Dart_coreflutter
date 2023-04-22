import 'package:flutter/material.dart';

class mode_theme {
  static ThemeData theme_is_ligth = ThemeData(
    textTheme: const TextTheme(
        displayMedium: TextStyle(
            color: Colors.teal, fontSize: 20, fontWeight: FontWeight.w500)),
    colorScheme: ColorScheme.light(
        brightness: Brightness.light,
        primary: Colors.tealAccent.shade700,
        secondary: Colors.tealAccent.shade400),
  );
  static ThemeData theme_is_dark = ThemeData(
    textTheme:  TextTheme(
        displayMedium: TextStyle(
            color: Colors.purple.shade700, fontSize: 20, fontWeight: FontWeight.w500)),
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xff3A1078),
    ),
    colorScheme: ColorScheme.dark(
      primary: const Color(0xff3A1078),
      secondary: const Color(0xff4E31AA),
    ),
  );
}
bool isdark = false;
Color textcolore =  (isdark)
?  const Color(0xff3A1078)
    : Colors.tealAccent.shade400;


