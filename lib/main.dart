import 'package:flutter/material.dart';
import 'package:food_delivery/screens.dart/timepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Timepage(),
      title: 'Food Delivery',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFF064635),
          fontFamily: 'Quicksand'),
      debugShowCheckedModeBanner: false,
    );
  }
}
