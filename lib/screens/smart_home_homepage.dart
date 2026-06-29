import 'package:flutter/material.dart';
import '../core/app_colors.dart';
import '../widgets/smart_home/circle_icon_button.dart';
import '../widgets/smart_home/module_card.dart';

class SmartHomeHomepage extends StatefulWidget {
  const SmartHomeHomepage({super.key});

  @override
  State<SmartHomeHomepage> createState() => _SmartHomeHomepageState();
}

class _SmartHomeHomepageState extends State<SmartHomeHomepage> {
  int _selectedRoomIndex = 0;
  int _selectedNavIndex = 0;

  final List<String> _rooms = [
    'Living Rooms',
    'Bedroom',
    'Kitchen',
    'Bathroom',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.smartHomeBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              const SizedBox(height: 28),
              _buildGridModules(),
              const SizedBox(height: 24),
              _buildRoomFilter(),
              const SizedBox(height: 20),
              _buildLatestRoomView(),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello Sarah',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              "Let's manage\nyour home",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                height: 1.25,
                color: Color(0xFF1A1A2E),
              ),
            ),
          ],
        ),
        const CircleAvatar(
          radius: 26,
          backgroundImage: NetworkImage(
            'https://images.unsplash.com/photo-1494790108377-be9c29b29330',
          ),
        ),
      ],
    );
  }

  Widget _buildGridModules() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: _buildDoorCard()),
            const SizedBox(width: 14),
            Expanded(child: _buildSharedUsersCard()),
          ],
        ),
        const SizedBox(height: 14),
        Row(
          children: [
            Expanded(child: _buildOfficeLightCard()),
            const SizedBox(width: 14),
            Expanded(child: _buildAddModulesCard()),
          ],
        ),
      ],
    );
  }

  Widget _buildDoorCard() {
    return const ModuleCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Front Doors',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: AppColors.textDark,
            ),
          ),
          SizedBox(height: 2),
          Text(
            'Closed - 95% Battery Left',
            style: TextStyle(fontSize: 11, color: Colors.grey),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleIconButton(icon: Icons.lock_outline),
              Icon(Icons.chevron_right, color: Colors.grey, size: 18),
              Icon(Icons.chevron_right, color: Colors.grey, size: 18),
              CircleIconButton(icon: Icons.lock_open_outlined),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSharedUsersCard() {
    const List<String> avatarUrls = [
      'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=100',
      'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=100',
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=100',
      'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=100',
    ];

    return const ModuleCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Shared Users',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: AppColors.textDark,
                ),
              ),
              _AddUserButton(),
            ],
          ),
          SizedBox(height: 2),
          Text(
            '4 People',
            style: TextStyle(fontSize: 11, color: Colors.grey),
          ),
          SizedBox(height: 16),
          _AvatarStack(avatarUrls: avatarUrls),
        ],
      ),
    );
  }

  Widget _buildOfficeLightCard() {
    return ModuleCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Office Light',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: AppColors.textDark,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            'On - Soft Mode',
            style: TextStyle(fontSize: 11, color: Colors.grey[500]),
          ),
          const SizedBox(height: 16),
          const _LightStatusRow(),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CircleIconButton(icon: Icons.lock_outline),
              Icon(Icons.chevron_right, color: Colors.grey, size: 18),
              Icon(Icons.chevron_right, color: Colors.grey, size: 18),
              CircleIconButton(icon: Icons.lock_outline),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAddModulesCard() {
    return const ModuleCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Add Edit Modules',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: AppColors.textDark,
            ),
          ),
          SizedBox(height: 2),
          Text(
            'Garage, Doors, and more',
            style: TextStyle(fontSize: 11, color: Colors.grey),
          ),
          SizedBox(height: 16),
          Row(
            children: [
              CircleIconButton(icon: Icons.add),
              SizedBox(width: 12),
              Text(
                '4 Modules',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRoomFilter() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(_rooms.length, (i) {
          final bool selected = i == _selectedRoomIndex;
          return GestureDetector(
            onTap: () => setState(() => _selectedRoomIndex = i),
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: selected ? AppColors.skyBlue.withValues(alpha: 0.1) : AppColors.lightGrey,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: selected ? AppColors.skyBlue : Colors.grey.withValues(alpha: 0.3),
                  width: selected ? 1.5 : 1,
                ),
              ),
              child: Text(
                _rooms[i],
                style: TextStyle(
                  color: selected ? AppColors.skyBlue : AppColors.textDark,
                  fontWeight: selected ? FontWeight.w700 : FontWeight.normal,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _buildLatestRoomView() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Latest Room View',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: AppColors.textDark,
              ),
            ),
            Text(
              'See All',
              style: TextStyle(
                fontSize: 13,
                color: Colors.blue,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        SizedBox(height: 12),
        _LatestRoomImage(),
      ],
    );
  }

  Widget _buildBottomNav() {
    const activeColor = AppColors.skyBlue;
    final inactiveColor = Colors.grey[400]!;

    const items = [
      _NavItem(Icons.home_rounded, 'Home'),
      _NavItem(Icons.emoji_emotions_outlined, 'Smart'),
      _NavItem(Icons.show_chart_rounded, 'Reports'),
      _NavItem(Icons.settings_outlined, 'Settings'),
    ];

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 16,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(items.length, (i) {
              final selected = i == _selectedNavIndex;
              return GestureDetector(
                onTap: () => setState(() => _selectedNavIndex = i),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      items[i].icon,
                      color: selected ? activeColor : inactiveColor,
                      size: 24,
                    ),
                    const SizedBox(height: 3),
                    Text(
                      items[i].label,
                      style: TextStyle(
                        fontSize: 11,
                        color: selected ? activeColor : inactiveColor,
                        fontWeight: selected ? FontWeight.w600 : FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}

class _AddUserButton extends StatelessWidget {
  const _AddUserButton();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 22,
      height: 22,
      decoration: const BoxDecoration(
        color: AppColors.skyBlue,
        shape: BoxShape.circle,
      ),
      child: const Icon(Icons.add, color: Colors.white, size: 14),
    );
  }
}

class _AvatarStack extends StatelessWidget {
  final List<String> avatarUrls;

  const _AvatarStack({required this.avatarUrls});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: Stack(
        clipBehavior: Clip.none,
        children: List.generate(avatarUrls.length, (i) {
          return Positioned(
            left: i * 22.0,
            child: CircleAvatar(
              radius: 16,
              backgroundImage: NetworkImage(avatarUrls[i]),
              backgroundColor: Colors.white,
            ),
          );
        }),
      ),
    );
  }
}

class _LightStatusRow extends StatelessWidget {
  const _LightStatusRow();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
          decoration: BoxDecoration(
            color: AppColors.green,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Text(
            'On',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 13,
            ),
          ),
        ),
        const SizedBox(width: 8),
        const Icon(Icons.chevron_right, color: Colors.grey, size: 18),
        const Icon(Icons.chevron_right, color: Colors.grey, size: 18),
        const SizedBox(width: 4),
        Text(
          'Off',
          style: TextStyle(
            fontSize: 13,
            color: Colors.grey[400],
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class _LatestRoomImage extends StatelessWidget {
  const _LatestRoomImage();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Stack(
        children: [
          Image.network(
            'https://images.unsplash.com/photo-1555041469-a586c61ea9bc?w=600',
            height: 190,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => Container(
              height: 190,
              color: Colors.grey[300],
              child: const Icon(Icons.image, size: 50, color: Colors.grey),
            ),
          ),
          Positioned(
            top: 12,
            left: 12,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.55),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Container(
                    width: 7,
                    height: 7,
                    decoration: const BoxDecoration(
                      color: AppColors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    'Live',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _NavItem {
  final IconData icon;
  final String label;
  const _NavItem(this.icon, this.label);
}
