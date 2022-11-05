import 'package:flutter/material.dart';

class MyThemes {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(),
  );

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    primarySwatch: Colors.blue,
    colorScheme: const ColorScheme.dark(),
  );
}
