import 'package:flutter/material.dart';
import 'package:flutter_profile_app/screens/profile_page.dart';
import 'screens/home_page.dart';

void main() =>
  runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.amberAccent),
      home: HomePage(),
    );
  }
}
