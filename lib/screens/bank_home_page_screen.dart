import 'package:flutter/material.dart';
import 'dart:ui';

class BankHomePageScreen extends StatelessWidget {
  const BankHomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryBlue = Color(0xFF0F47B2);
    const Color backgroundGrey = Color(0xFFF5F5F5);
    return Scaffold(
      backgroundColor: primaryBlue,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Positioned.fill(
              top: 130,
              child: Container(
                decoration: const BoxDecoration(
                  color: backgroundGrey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: const [
                        BankCardDeck(),
                        SizedBox(height: 24),
                        FeaturesGrid(),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              top: 20,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipOval(
                        child: Image.network(
                          'https://avatar.iran.liara.run/public/66',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Text(
                        'Hi, Push Puttichai',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      const Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      Positioned(
                        top: 2,
                        right: 2,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                            color: Color(0xFFC70039),
                            shape: BoxShape.circle,
                          ),
                          child: const Text(
                            '3',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFF0F47B2),
        unselectedItemColor: Colors.grey.withOpacity(0.6),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline),
            label: 'Messages',
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

class BankCardDeck extends StatelessWidget {
  const BankCardDeck({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: Stack(
        children: [
          Positioned(
            left: 20,
            right: 20,
            bottom: 0,
            child: Container(
              height: 170,
              decoration: BoxDecoration(
                color: const Color(0xFF0A2647).withOpacity(0.4),
                borderRadius: BorderRadius.circular(24),
              ),
            ),
          ),
          Positioned(
            left: 10,
            right: 10,
            bottom: 8,

            child: Container(
              height: 170,
              decoration: BoxDecoration(
                color: const Color(0xFFE63946),
                borderRadius: BorderRadius.circular(24),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF1E6091),
                    Color(0xFF144272),
                    Color(0xFF0A2647),
                  ],
                ),
              ),
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'John Smith',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Amazon Platium',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.15),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '4756  ••••  ••••  9018',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              letterSpacing: 1.5,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            '\$3,469.52',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        'VISA',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
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

class FeatureItem {
  final IconData icon;
  final Color iconColor;
  final String title;

  const FeatureItem({
    required this.icon,
    required this.iconColor,
    required this.title,
  });
}

class FeaturesGrid extends StatelessWidget {
  const FeaturesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final List<FeatureItem> items = [
      const FeatureItem(
        icon: Icons.account_balance_wallet,
        iconColor: Color(0xFF0F47B2),
        title: "Account\nand Card",
      ),
      const FeatureItem(
        icon: Icons.swap_horizontal_circle_outlined,
        iconColor: Color(0xFFE63946),
        title: "Transfer",
      ),
      const FeatureItem(
        icon: Icons.credit_card,
        iconColor: Color(0xFF2A9D8F),
        title: "Withdraw",
      ),
      const FeatureItem(
        icon: Icons.phone_android,
        iconColor: Color(0xFFF4A261),
        title: "Mobile\nprepaid",
      ),
      const FeatureItem(
        icon: Icons.receipt_long,
        iconColor: Color(0xFF2A9D8F),
        title: "Pay the\nbill",
      ),
      const FeatureItem(
        icon: Icons.savings_outlined,
        iconColor: Color(0xFF0F47B2),
        title: "Save\nonline",
      ),
      const FeatureItem(
        icon: Icons.payment,
        iconColor: Color(0xFFE63946),
        title: "Credit\ncard",
      ),
      const FeatureItem(
        icon: Icons.analytics_outlined,
        iconColor: Color(0xFF1D3557),
        title: "Transaction\nreport",
      ),
      const FeatureItem(
        icon: Icons.assignment_ind_outlined,
        iconColor: Color(0xFFE63946),
        title: "Beneficiary",
      ),
    ];
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 0.95,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.03),
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                color: item.iconColor.withOpacity(0.1),
              ),
              Icon(item.icon, color: item.iconColor, size: 28),
              SizedBox(height: 10),
              Text(
                item.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF4A4A4A),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  height: 1.2,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
