import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191B1F),
      body: Column(
        children: [
          ClipPath(
            clipper: HeaderClipper(),
            child: Container(
              height: 220,
              width: double.infinity,
              color: const Color(0xFF4D5151),
              padding: const EdgeInsets.only(top: 60, left: 24, right: 24),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.notifications_none_rounded, color: Colors.white, size: 28),
                  Row(
                    children: [
                      const Icon(Icons.history, color: Colors.white, size: 28),
                      const SizedBox(width: 16),
                      const Icon(Icons.more_vert, color: Colors.white, size: 28),
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
                          backgroundColor: Color(0xFF8CD2E6),
                          child: Icon(Icons.person, size: 65, color: Colors.white),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(6),
                            decoration: const BoxDecoration(
                              color: Color(0xFF191B1F),
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
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '+084 8392 923 93',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
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
                        color: const Color(0xFF212327),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          const ProfileMenuItem(
                            icon: Icons.badge_outlined,
                            title: 'Edit profile information',
                          ),
                          Divider(color: Colors.white.withOpacity(0.08), height: 1),
                          const ProfileMenuItem(
                            icon: Icons.notifications_none_rounded,
                            title: 'Notifications',
                            trailingText: 'ON',
                          ),
                          Divider(color: Colors.white.withOpacity(0.08), height: 1),
                          const ProfileMenuItem(
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
                        color: const Color(0xFF212327),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          const ProfileMenuItem(
                            icon: Icons.shield_outlined,
                            title: 'Security',
                          ),
                          Divider(color: Colors.white.withOpacity(0.08), height: 1),
                          const ProfileMenuItem(
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
                        color: const Color(0xFF212327),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          const ProfileMenuItem(
                            icon: Icons.people_outline,
                            title: 'Help & Support',
                          ),
                          Divider(color: Colors.white.withOpacity(0.08), height: 1),
                          const ProfileMenuItem(
                            icon: Icons.chat_bubble_outline,
                            title: 'Contact us',
                          ),
                          Divider(color: Colors.white.withOpacity(0.08), height: 1),
                          const ProfileMenuItem(
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
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 24),
          const SizedBox(width: 16),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          if (trailingText != null)
            Text(
              trailingText!,
              style: const TextStyle(
                color: Color(0xFFE5A644),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
        ],
      ),
    );
  }
}

class HeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 50);

    var controlPoint = Offset(size.width / 2, size.height + 20);
    var endPoint = Offset(size.width, size.height - 50);

    path.quadraticBezierTo(
      controlPoint.dx,
      controlPoint.dy,
      endPoint.dx,
      endPoint.dy,
    );

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}