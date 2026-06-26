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
              ),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF9E6),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.error_rounded,
                      color: Colors.amber,
                      size: 24,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        'You have not checked out the app recently. Do some workouts.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black.withOpacity(0.7),
                          height: 1.3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '3 days ago',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.sync,
                      color: Colors.black.withOpacity(0.5),
                      size: 22,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: MetricCard(
                          icon: Icons.favorite_border_rounded,
                          title: 'Heart Rate',
                          value: '78',
                          unit: 'bpm',
                          accentColor: Color(0xFFE94A5F),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: MetricCard(
                          icon: Icons.flash_on_rounded,
                          title: 'Exercise',
                          value: '24',
                          unit: 'min',
                          accentColor: Color(0xFF5C51A6),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: MetricCard(
                          icon: Icons.flag_outlined,
                          title: 'Walking',
                          value: '10',
                          unit: 'km',
                          accentColor: Color(0xFF2A9D8F),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: MetricCard(
                          icon: Icons.dark_mode_outlined,
                          title: 'Sleep',
                          value: '8',
                          unit: 'hrs',
                          accentColor: Color(0xFF3A86C8),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          margin: const EdgeInsets.fromLTRB(24, 0, 24, 20),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.85),
            borderRadius: BorderRadius.circular(32),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.03),
                blurRadius: 15,
                offset: const Offset(0, -4),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.grid_view_rounded,
                  color: Colors.black,
                  size: 26,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.donut_large_rounded,
                  color: Colors.black.withOpacity(0.3),
                  size: 26,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 52,
                  height: 52,
                  decoration: const BoxDecoration(
                    color: Color(0xFF222831),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.add, color: Colors.white, size: 28),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_none_rounded,
                  color: Colors.black.withOpacity(0.3),
                  size: 26,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person_outline_rounded,
                  color: Colors.black.withOpacity(0.3),
                  size: 26,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MetricCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final String unit;
  final Color accentColor;
  const MetricCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.unit,
    required this.accentColor,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: accentColor.withOpacity(0.15),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: accentColor.withOpacity(0.15), width: 1.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: accentColor, size: 20),
              const SizedBox(width: 8),
              Text(
                title,
                style: TextStyle(
                  color: accentColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                value,
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                unit,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black.withOpacity(0.4),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
