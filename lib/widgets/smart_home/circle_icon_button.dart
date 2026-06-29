import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  final IconData icon;

  const CircleIconButton({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 34,
      height: 34,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey.withValues(alpha: 0.2)),
      ),
      child: Icon(icon, size: 16, color: Colors.grey[600]),
    );
  }
}
