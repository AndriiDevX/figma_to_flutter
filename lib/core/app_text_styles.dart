import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  // Headings - Extra Large
  static const TextStyle headingXL = TextStyle(
    fontSize: 42,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    height: 1.2,
  );

  // Headings - Large
  static const TextStyle headingLg = TextStyle(
    fontSize: 35,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  static const TextStyle headingLgGold = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.gold,
  );

  // Headings - Medium
  static const TextStyle headingMd = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    height: 1.25,
    color: AppColors.textDark,
  );

  static const TextStyle headingMdBold = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle headingMdBlack = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  // Headings - Small
  static const TextStyle headingSm = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.textDark,
  );

  static const TextStyle headingSmWhite = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static const TextStyle headingSmGold = TextStyle(
    color: AppColors.gold,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  // Body - Large
  static const TextStyle bodyLg = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.bold,
    color: AppColors.textDark,
  );

  static const TextStyle bodyLgWhite = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  // Body - Medium
  static const TextStyle bodyMd = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );

  static const TextStyle bodyMdMuted = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.textGreyMuted,
  );

  static const TextStyle bodyMdGreyMuted = TextStyle(
    fontSize: 16,
    color: Colors.grey,
  );

  // Body - Small
  static const TextStyle bodySm = TextStyle(
    fontSize: 15,
    color: Colors.grey,
  );

  static const TextStyle bodySmWhiteTransparent = TextStyle(
    fontSize: 14,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle bodySmGrey = TextStyle(
    fontSize: 14,
    color: AppColors.textGrey,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle bodySm600 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.textDark,
  );

  // Labels
  static const TextStyle labelLg = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: AppColors.textDark,
  );

  static const TextStyle labelLgWhite = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: Colors.white,
  );

  static const TextStyle labelMd = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: AppColors.textDark,
  );

  static const TextStyle labelMdGrey = TextStyle(
    fontSize: 13,
    color: Colors.grey,
  );

  static const TextStyle labelMdWhite = TextStyle(
    fontSize: 13,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle labelSm = TextStyle(
    fontSize: 12,
    color: AppColors.textGrey,
  );

  static const TextStyle labelSmWhite = TextStyle(
    fontSize: 12,
    color: Colors.white,
  );

  static const TextStyle labelSmGrey = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.textDark,
  );

  static const TextStyle labelSmWhiteTransparent = TextStyle(
    fontSize: 12,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );

  // Caption
  static const TextStyle captionXs = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle captionXsSmall = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.bold,
  );

  // Bank Card
  static const TextStyle bankCardName = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle bankCardSubtitle = TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  // Greeting
  static const TextStyle greeting = TextStyle(
    fontSize: 28,
    color: Colors.black,
    height: 1.2,
  );

  static const TextStyle greetingTransparent = TextStyle(
    fontSize: 28,
    height: 1.2,
  );
}
