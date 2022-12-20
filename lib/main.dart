import 'package:flutter/material.dart';
import 'package:github_test/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const PageOneScreen(),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

