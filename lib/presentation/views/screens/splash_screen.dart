import 'dart:async';

import 'package:flutter/material.dart';
import 'package:incp/presentation/views/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigateFunction();
    super.initState();
  }

  navigateFunction() async {
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen())),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: const Image(
          image: AssetImage("assets/splash.png"),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
