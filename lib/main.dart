import 'package:flutter/material.dart';
import 'package:incp/presentation/views/screens/splash_screen.dart';

import 'presentation/getx/di/dependi_injection.dart';

void main() {
  DependencyInjection.inject();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
