import 'package:flutter/material.dart';
import 'package:pantagora_app/pages/home_page.dart';
import 'package:pantagora_app/pages/splash_page.dart';

void main() {
  runApp(const PantAgoraApp());
}

class PantAgoraApp extends StatelessWidget {
  const PantAgoraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const SplashPage(),
    );
  }
}
