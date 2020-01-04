import 'package:appgewaltig/pages/showcase_page.dart';
import 'package:appgewaltig/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  final prefs = await SharedPreferences.getInstance();
  darkMode = prefs.getBool('darkmode') ?? false;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShowcasePage(),
    );
  }
}
