import 'package:flutter/material.dart';
import '../core/app_colors.dart';

class MusicPlayerScreen extends StatelessWidget {
  const MusicPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.musicBgDark,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            children: [
              const _TopBar(),
              const SizedBox(height: 32),
              const _AlbumArt(),
              const SizedBox(height: 32),
              const _SongInfo(),
              const SizedBox(height: 32),
              const _Visualizer(),
              const SizedBox(height: 32),
              const _PlayerControls(),
            ],
          ),
        ),
      ),
    );
  }
}

class _TopBar extends StatelessWidget {
  const _TopBar();

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.arrow_back_ios_new,
          color: AppColors.musicTextGold,
          size: 20,
        ),
        Text(
          'Back To Her Men',
          style: TextStyle(
            color: AppColors.musicTextGold,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        Icon(Icons.more_vert, color: AppColors.musicTextGold, size: 24),
      ],
    );
  }
}

class _AlbumArt extends StatelessWidget {
  const _AlbumArt();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.neonCyan, width: 1.5),
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
    );
  }
}

class _SongInfo extends StatelessWidget {
  const _SongInfo();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Back To Her Men',
              style: TextStyle(
                color: AppColors.musicTextGold,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              'Demien Rice',
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.5),
                fontSize: 16,
              ),
            ),
          ],
        ),
        const Icon(Icons.favorite, color: Colors.white, size: 28),
      ],
    );
  }
}

class _Visualizer extends StatelessWidget {
  const _Visualizer();

  static const List<double> _heights = [
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(35, (index) {
            final isPlayed = index < 15;
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 1.5),
              width: 3,
              height: _heights[index % _heights.length],
              decoration: BoxDecoration(
                color: isPlayed
                    ? Colors.purpleAccent
                    : Colors.white.withValues(alpha: 0.9),
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
                color: Colors.white.withValues(alpha: 0.4),
                fontSize: 12,
              ),
            ),
            Text(
              "3:29",
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.4),
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _PlayerControls extends StatelessWidget {
  const _PlayerControls();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.shuffle,
          color: Colors.white.withValues(alpha: 0.6),
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
            color: Colors.purpleAccent.withValues(alpha: 0.3),
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
          color: Colors.white.withValues(alpha: 0.6),
          size: 22,
        ),
      ],
    );
  }
}
