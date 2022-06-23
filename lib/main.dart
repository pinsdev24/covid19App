import 'package:covid19app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid 19',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: "Poppins",
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kBodyTextColor)
        )
      ),
      home: HomeScreen(),
    );
  }
}
