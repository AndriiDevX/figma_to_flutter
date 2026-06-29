import 'package:flutter/material.dart';

class ProfileMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? trailingText;

  const ProfileMenuItem({
    super.key,
    required this.icon,
    required this.title,
    this.trailingText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.white, size: 24),
              const SizedBox(width: 12),
              Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
          if (trailingText != null)
            Text(
              trailingText!,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
        ],
      ),
    );
  }
}
