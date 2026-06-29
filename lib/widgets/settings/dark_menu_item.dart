import 'package:flutter/material.dart';
import '../../core/app_colors.dart';

class DarkMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const DarkMenuItem({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        children: [
          Icon(icon, color: AppColors.textGreyMuted, size: 24),
          const SizedBox(width: 16),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
