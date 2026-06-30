import 'package:figma_to_flutter/screens/bank_home_page_screen.dart';
import 'package:figma_to_flutter/screens/crypto_home.dart';
import 'package:figma_to_flutter/screens/home_real_estate.dart';
import 'package:figma_to_flutter/screens/music_player_screen.dart';
import 'package:figma_to_flutter/screens/profile_screen.dart';
import 'package:figma_to_flutter/screens/settings_screen.dart';
import 'package:figma_to_flutter/screens/smart_home_homepage.dart';
import 'package:figma_to_flutter/screens/vital_tracker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: VitalTracker(),
      debugShowCheckedModeBanner: false,
    );
  }
}
