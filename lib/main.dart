import 'package:flutter/material.dart';
import 'package:tamil_quiz/MainWidget.dart';
import 'package:tamil_quiz/daily.dart';
import 'package:tamil_quiz/dashboard.dart';
import 'package:tamil_quiz/login.dart';
import 'package:tamil_quiz/onboard.dart';
import 'package:tamil_quiz/weekly.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "JosefinSans",
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      home:Weekly(),
    );
  }
}

