import 'dart:async';
import 'package:flutter/material.dart';
import 'package:food_delivery/screens.dart/firstpage.dart';

class Timepage extends StatefulWidget {
  const Timepage({super.key});

  @override
  State<Timepage> createState() => _TimepageState();
}

class _TimepageState extends State<Timepage> {
  @override
  void initState() {
    super.initState();
    // Naviguer vers la première page après 8 secondes
    Timer(const Duration(seconds: 8), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Firstpage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF064635),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/img/logo 2.png',
              height: 260,
            ),
          ],
        ),
      ),
    );
  }
}
