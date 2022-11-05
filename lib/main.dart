import 'package:flutter/material.dart';
import 'package:mobile_cv/google_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile CV',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GoogleNavBar(),
    );
  }
}
