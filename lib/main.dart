import 'package:flutter/material.dart';
import 'package:login/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
