import 'package:flutter/material.dart';
import 'package:mobile_cv/google_navigation.dart';
import 'package:mobile_cv/provider/theme_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      title: 'Mobile CV',
      debugShowCheckedModeBanner: false,
      home: const GoogleNavBar(),
    );
  }
}
