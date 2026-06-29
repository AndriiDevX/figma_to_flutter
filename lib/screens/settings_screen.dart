import 'package:flutter/material.dart';
import '../core/app_colors.dart';
import '../widgets/settings/dark_menu_block.dart';
import '../widgets/settings/dark_menu_item.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Settings',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Account',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              const SizedBox(height: 12),
              const DarkMenuBlock(
                children: [
                  DarkMenuItem(
                    icon: Icons.person_outline,
                    title: 'Edit profile',
                  ),
                  DarkMenuItem(icon: Icons.security, title: 'Security'),
                  DarkMenuItem(
                    icon: Icons.notifications_none,
                    title: 'Notifications',
                  ),
                  DarkMenuItem(icon: Icons.lock_outline, title: 'Privacy'),
                ],
              ),
              const SizedBox(height: 24),
              const Text(
                'Help & Support',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              const SizedBox(height: 12),
              const DarkMenuBlock(
                children: [
                  DarkMenuItem(
                    icon: Icons.credit_card,
                    title: 'My Subscription',
                  ),
                  DarkMenuItem(
                    icon: Icons.help_outline,
                    title: 'Help & Support',
                  ),
                  DarkMenuItem(
                    icon: Icons.info_outline,
                    title: 'Terms and Policies',
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text(
                'Cache & cellular',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              const SizedBox(height: 12),
              const DarkMenuBlock(
                children: [
                  DarkMenuItem(
                    icon: Icons.delete_outline,
                    title: 'Free up space',
                  ),
                  DarkMenuItem(icon: Icons.data_saver_off, title: 'Data Saver'),
                ],
              ),
              const SizedBox(height: 24),
              const Text(
                'Actions',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              const SizedBox(height: 12),
              const DarkMenuBlock(
                children: [
                  DarkMenuItem(
                    icon: Icons.flag_outlined,
                    title: 'Report a problem',
                  ),
                  DarkMenuItem(
                    icon: Icons.person_add_alt,
                    title: 'Add account',
                  ),
                  DarkMenuItem(icon: Icons.logout, title: 'Log out'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
