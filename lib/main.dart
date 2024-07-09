import 'package:flutter/material.dart';
import 'package:flutter_getx_for_beginner/screens/counter_view.dart';
import 'package:flutter_getx_for_beginner/screens/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      home: CounterView(),
    );
  }
}
