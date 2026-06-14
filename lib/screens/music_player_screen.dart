import 'package:flutter/material.dart';

class MusicPlayerScreen extends StatelessWidget {
  const MusicPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color bgDark = Color(0xFF0D0E12);
    const Color neonCyan = Color(0xFF4CC9F0);
    const Color textGold = Color(0xFFFFE194);
    return Scaffold(
      backgroundColor: bgDark,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.arrow_back_ios_new,
                    color: textGold,
                    size: 20,
                  ),
                  const Text(
                    'Back To Her Men',
                    style: TextStyle(
                      color: textGold,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Icon(Icons.more_vert, color: textGold, size: 24),
                ],
              ),
              const SizedBox(height: 32),
              Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  border: Border.all(color: neonCyan, width: 1.5),
                  borderRadius: BorderRadius.circular(28),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1541701494587-cb58502866ab?q=80&w=500',
                    height: MediaQuery.of(context).size.width - 60,
                    width: MediaQuery.of(context).size.width - 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Back To Her Men',
                        style: TextStyle(
                          color: textGold,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        'Demien Rice',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const Icon(Icons.favorite, color: Colors.white, size: 28),
                ],
              ),
              const SizedBox(height: 32),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: List.generate(35, (index) {
                      final List<double> heights = [
                        15,
                        25,
                        35,
                        20,
                        18,
                        30,
                        45,
                        40,
                        22,
                        15,
                        28,
                        38,
                        48,
                        32,
                        20,
                        25,
                        42,
                        35,
                        15,
                        20,
                        30,
                        40,
                        25,
                        15,
                        22,
                        35,
                        30,
                        18,
                        12,
                        25,
                        38,
                        20,
                        15,
                        10,
                        5,
                      ];
                      final isPlayed = index < 15;
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 1.5),
                        width: 3,
                        height: heights[index % heights.length],
                        decoration: BoxDecoration(
                          color: isPlayed
                              ? Colors.purpleAccent
                              : Colors.white.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(2),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "1:04",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.4),
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "3:29",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.4),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.shuffle,
                    color: Colors.white.withOpacity(0.6),
                    size: 22,
                  ),
                  const Icon(
                    Icons.skip_previous_rounded,
                    color: Colors.white,
                    size: 36,
                  ),

                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent.withOpacity(0.3),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Container(
                        width: 54,
                        height: 54,
                        decoration: const BoxDecoration(
                          color: Colors.purpleAccent,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.pause_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ),

                  const Icon(
                    Icons.skip_next_rounded,
                    color: Colors.white,
                    size: 36,
                  ),
                  Icon(
                    Icons.repeat,
                    color: Colors.white.withOpacity(0.6),
                    size: 22,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
