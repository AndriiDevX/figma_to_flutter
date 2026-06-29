import 'package:flutter/material.dart';
import '../core/app_colors.dart';
import '../widgets/profile/profile_menu_item.dart';
import '../widgets/profile/header_clipper.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.profileBg,
      body: Column(
        children: [
          ClipPath(
            clipper: HeaderClipper(),
            child: Container(
              height: 220,
              width: double.infinity,
              color: AppColors.profileHeader,
              padding: const EdgeInsets.only(top: 60, left: 24, right: 24),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.notifications_none_rounded, color: Colors.white, size: 28),
                  Row(
                    children: [
                      Icon(Icons.history, color: Colors.white, size: 28),
                      SizedBox(width: 16),
                      Icon(Icons.more_vert, color: Colors.white, size: 28),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Transform.translate(
                    offset: const Offset(0, -60),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 55,
                          backgroundColor: AppColors.profileCyan,
                          child: Icon(Icons.person, size: 65, color: Colors.white),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(6),
                            decoration: const BoxDecoration(
                              color: AppColors.profileBg,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.mode_edit_outline_outlined,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(0, -40),
                    child: Column(
                      children: [
                        const Text(
                          'Laiba Ahmar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'testemail1@gmail.com',
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.6),
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '+084 8392 923 93',
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.6),
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(0, -20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.profileContainer,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Column(
                        children: [
                          ProfileMenuItem(
                            icon: Icons.badge_outlined,
                            title: 'Edit profile information',
                          ),
                          Divider(color: Colors.white12, height: 1),
                          ProfileMenuItem(
                            icon: Icons.notifications_none_rounded,
                            title: 'Notifications',
                            trailingText: 'ON',
                          ),
                          Divider(color: Colors.white12, height: 1),
                          ProfileMenuItem(
                            icon: Icons.g_translate,
                            title: 'Language',
                            trailingText: 'English',
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Transform.translate(
                    offset: const Offset(0, -20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.profileContainer,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Column(
                        children: [
                          ProfileMenuItem(
                            icon: Icons.shield_outlined,
                            title: 'Security',
                          ),
                          Divider(color: Colors.white12, height: 1),
                          ProfileMenuItem(
                            icon: Icons.wb_sunny_outlined,
                            title: 'Theme',
                            trailingText: 'Light mode',
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Transform.translate(
                    offset: const Offset(0, -20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.profileContainer,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Column(
                        children: [
                          ProfileMenuItem(
                            icon: Icons.people_outline,
                            title: 'Help & Support',
                          ),
                          Divider(color: Colors.white12, height: 1),
                          ProfileMenuItem(
                            icon: Icons.chat_bubble_outline,
                            title: 'Contact us',
                          ),
                          Divider(color: Colors.white12, height: 1),
                          ProfileMenuItem(
                            icon: Icons.lock_outline,
                            title: 'Privacy policy',
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}