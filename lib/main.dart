import 'package:flutter/material.dart';
//import 'package:salait_homework/homework4/page1.dart';
//import 'package:salait_homework/homework4/page1.dart';
//import 'package:salait_homework/homework4/page2.dart';
//import 'package:salait_homework/homework4/page3.dart';
//import 'package:salait_homework/homework5/home_page5.dart';
import 'package:salait_homework/homework6/views/home_page6.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter with SalaIT",
      theme: ThemeData.dark(),
      home: const HomePage6(),
    );
  }
}
