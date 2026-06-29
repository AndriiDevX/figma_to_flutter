import 'package:figma_to_flutter/screens/smart_home_homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SmartHomeHomepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
