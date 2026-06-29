import 'package:flutter/material.dart';
import '../../core/app_colors.dart';

class DarkMenuBlock extends StatelessWidget {
  final List<Widget> children;

  const DarkMenuBlock({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.darkBgSecondary,
      ),
      child: Column(children: children),
    );
  }
}
