import 'package:flutter/cupertino.dart';

class AppColors {
  AppColors._();

  // Apple-style primary color - softer blue
  static const primary = Color(0xFF007AFF);
  static const primaryDark = Color(0xFF0A84FF);
  
  // Accent colors
  static const accentWarm = Color(0xFFFF9500);
  static const accentGreen = Color(0xFF34C759);
  static const accentRed = Color(0xFFFF3B30);

  // Background colors - more neutral Apple style
  static const background = CupertinoDynamicColor.withBrightness(
    color: Color(0xFFF2F2F7),
    darkColor: Color(0xFF000000),
  );

  // Card colors
  static const card = CupertinoDynamicColor.withBrightness(
    color: Color(0xFFFFFFFF),
    darkColor: Color(0xFF1C1C1E),
  );

  // Secondary card for nested content
  static const secondaryCard = CupertinoDynamicColor.withBrightness(
    color: Color(0xFFF9F9F9),
    darkColor: Color(0xFF2C2C2E),
  );

  // Text colors - Apple standard
  static const textPrimary = CupertinoDynamicColor.withBrightness(
    color: Color(0xFF000000),
    darkColor: Color(0xFFFFFFFF),
  );

  static const textSecondary = CupertinoDynamicColor.withBrightness(
    color: Color(0xFF8E8E93),
    darkColor: Color(0xFF98989D),
  );

  static const textTertiary = CupertinoDynamicColor.withBrightness(
    color: Color(0xFFC7C7CC),
    darkColor: Color(0xFF636366),
  );

  // Separator colors
  static const separator = CupertinoDynamicColor.withBrightness(
    color: Color(0xFFC6C6C8),
    darkColor: Color(0xFF38383A),
  );

  // Shadow colors - very subtle
  static const subtleShadow = CupertinoDynamicColor.withBrightness(
    color: Color(0x0D000000),
    darkColor: Color(0x40000000),
  );

  // Bar background with blur effect
  static const barBackground = CupertinoDynamicColor.withBrightness(
    color: Color(0xF2FFFFFF),
    darkColor: Color(0xF21C1C1E),
  );

  // Grouped list background
  static const groupedBackground = CupertinoDynamicColor.withBrightness(
    color: Color(0xFFF2F2F7),
    darkColor: Color(0xFF000000),
  );
}

class AppSpacing {
  AppSpacing._();

  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 16.0;
  static const double lg = 24.0;
  static const double xl = 32.0;
  static const double xxl = 40.0;
}

class AppTheme {
  AppTheme._();

  static CupertinoThemeData theme = CupertinoThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.background,
    barBackgroundColor: AppColors.barBackground,
    textTheme: const CupertinoTextThemeData(
      textStyle: TextStyle(
        fontFamily: '.SF Pro Text',
        fontSize: 17,
        fontWeight: FontWeight.w400,
        color: AppColors.textPrimary,
        letterSpacing: -0.41,
        height: 1.29,
      ),
      navTitleTextStyle: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
        letterSpacing: -0.41,
      ),
      navLargeTitleTextStyle: TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimary,
        letterSpacing: 0.37,
        height: 1.0,
      ),
      actionTextStyle: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w400,
        color: AppColors.primary,
        letterSpacing: -0.41,
      ),
      tabLabelTextStyle: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.24,
        color: AppColors.textSecondary,
      ),
    ),
  );
}
