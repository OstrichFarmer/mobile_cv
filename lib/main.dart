import 'package:flutter/material.dart';
import 'package:mobile_cv/google_navigation.dart';
import 'package:mobile_cv/provider/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  static const String title = 'Light & Dark Theme';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);

          return MaterialApp(
            title: title,
            themeMode: themeProvider.themeMode,
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
            home: const GoogleNavBar(),
          );
        },
      );
}
