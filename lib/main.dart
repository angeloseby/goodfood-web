import 'package:flutter/material.dart';
import 'package:flutter_website/constant.dart';
import 'package:flutter_website/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
      home: const HomeScreen(),
    );
  }
}
