import 'dart:async';

import 'package:flutter/material.dart';
import 'package:x_clone/views/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (ctx) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(15, 20, 25, 0),
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          height: 130,
          width: 130,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
