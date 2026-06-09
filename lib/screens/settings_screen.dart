import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF191B1F),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
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

              DarkMenuBlock(
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
              DarkMenuBlock(
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
              DarkMenuBlock(
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

class DarkMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const DarkMenuItem({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFFA1A1A1), size: 24),
          const SizedBox(width: 16),
          Text(
            title,
            style: TextStyle(
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

class DarkMenuBlock extends StatelessWidget {
  final List<Widget> children;

  const DarkMenuBlock({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFF212327),
      ),

      child: Column(children: children),
    );
  }
}
