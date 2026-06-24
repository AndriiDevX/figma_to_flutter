import 'package:flutter/material.dart';

class VitalTracker extends StatelessWidget {
  const VitalTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F3),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsGeometry.symmetric(
            horizontal: 24,
            vertical: 12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 28,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Text(
                'Hello,',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.black.withOpacity(0.5),
                  height: 1.2,
                ),
              ),
              const Text(
                'Tanvir',
                style: TextStyle(
                  fontSize: 42, 
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  height: 1.2,

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
