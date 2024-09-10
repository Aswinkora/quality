import 'package:flutter/material.dart';
import 'package:quality/screens/dash.dart';
import 'package:quality/screens/login.dart';
import 'package:quality/screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserLogin(),
    );
  }
}
