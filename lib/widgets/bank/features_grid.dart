import 'package:flutter/material.dart';
import '../../core/app_colors.dart';

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

  static const List<FeatureItem> _items = [
    FeatureItem(
      icon: Icons.account_balance_wallet,
      iconColor: AppColors.primaryBlue,
      title: "Account\nand Card",
    ),
    FeatureItem(
      icon: Icons.swap_horizontal_circle_outlined,
      iconColor: AppColors.redDark,
      title: "Transfer",
    ),
    FeatureItem(
      icon: Icons.credit_card,
      iconColor: AppColors.teal,
      title: "Withdraw",
    ),
    FeatureItem(
      icon: Icons.phone_android,
      iconColor: Color(0xFFF4A261),
      title: "Mobile\nprepaid",
    ),
    FeatureItem(
      icon: Icons.receipt_long,
      iconColor: AppColors.teal,
      title: "Pay the\nbill",
    ),
    FeatureItem(
      icon: Icons.savings_outlined,
      iconColor: AppColors.primaryBlue,
      title: "Save\nonline",
    ),
    FeatureItem(
      icon: Icons.payment,
      iconColor: AppColors.redDark,
      title: "Credit\ncard",
    ),
    FeatureItem(
      icon: Icons.analytics_outlined,
      iconColor: Color(0xFF1D3557),
      title: "Transaction\nreport",
    ),
    FeatureItem(
      icon: Icons.assignment_ind_outlined,
      iconColor: AppColors.redDark,
      title: "Beneficiary",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 0.95,
      ),
      itemCount: _items.length,
      itemBuilder: (context, index) {
        final item = _items[index];
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.03),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                color: item.iconColor.withValues(alpha: 0.1),
              ),
              Icon(item.icon, color: item.iconColor, size: 28),
              const SizedBox(height: 10),
              Text(
                item.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
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
