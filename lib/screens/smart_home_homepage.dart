import 'package:flutter/material.dart';

class SmartHomeHomepage extends StatelessWidget {
  const SmartHomeHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    final backgroundColor = const Color(0xFFF5F7F6);
    final cardColor = const Color(0xFFEBEFEF);
    final accentGreen = const Color(0xFF4CD964);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              const SizedBox(height: 32),
              //_buildGridModules
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildHeader() {
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello Sarah',
            style: TextStyle(
             color: Colors.grey[600],fontSize: 16,
            ),
          
          ),
          const SizedBox(
            height: 4,
          ),
          const Text(
            'Lets manage \nyour home',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              height: 1.2,
              color: Color(0xFF1E2A24),
            ),
          )
        ],
      ),
      const CircleAvatar(
        radius: 28,
        backgroundImage: NetworkImage('https://images.unsplash.com/photo-1494790108377-be9c29b29330'),
      )
    ],
    );
  }
}

