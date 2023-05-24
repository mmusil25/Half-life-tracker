import 'package:flutter/material.dart';
import 'package:half_life_tracker/testableUnits/real_time_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chemical Half Life',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: 
        'Flutter Demo Home Page'),
    );
  }
}




