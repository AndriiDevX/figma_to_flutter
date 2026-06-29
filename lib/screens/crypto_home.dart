import 'package:flutter/material.dart';
import '../core/app_colors.dart';

class CryptoHome extends StatelessWidget {
  const CryptoHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cryptoBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const _HeaderRow(),
                const SizedBox(height: 35),
                const Text(
                  '6.6096 ETH',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 8),
                const _PriceRow(),
                const SizedBox(height: 20),
                const _ActionButtons(),
                const SizedBox(height: 30),
                const _TokenSection(),
                const SizedBox(height: 20),
                const _TokenCard(
                  icon: Icons.token,
                  title: 'Ethereum',
                  price: '\$2,450.50',
                  change: '+5.2%',
                ),
                const _TokenCard(
                  icon: Icons.token,
                  title: 'Bitcoin',
                  price: '\$45,320.00',
                  change: '+3.8%',
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[400],
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: 0,
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_horizontal_circle_outlined),
            label: 'Swap',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.token_outlined),
            label: 'NFTs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class _HeaderRow extends StatelessWidget {
  const _HeaderRow();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const CircleAvatar(),
            const SizedBox(width: 15),
            const Text(
              'Name',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const Text('Ethereum network'),
      ],
    );
  }
}

class _PriceRow extends StatelessWidget {
  const _PriceRow();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          '\$ 11,760.86',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(width: 20),
        Text(
          '↗ 9.97%',
          style: TextStyle(
            color: AppColors.green,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}

class _ActionButtons extends StatelessWidget {
  const _ActionButtons();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(child: _ActionButton(icon: Icons.arrow_upward, label: 'Send')),
        SizedBox(width: 14),
        Expanded(child: _ActionButton(icon: Icons.download_rounded, label: 'Receive')),
        SizedBox(width: 14),
        Expanded(child: _ActionButton(icon: Icons.currency_bitcoin, label: 'Buy')),
      ],
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ActionButton({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 18),
          const SizedBox(width: 6),
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

class _TokenSection extends StatelessWidget {
  const _TokenSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Tokens',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Container(
                  height: 3,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Collectibles',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 4),
                SizedBox(height: 4),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class _TokenCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String price;
  final String change;

  const _TokenCard({
    required this.icon,
    required this.title,
    required this.price,
    required this.change,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.02),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey[100],
                child: Icon(icon, color: Colors.black),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            change,
            style: TextStyle(
              color: AppColors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
