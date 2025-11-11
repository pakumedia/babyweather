import 'package:flutter/cupertino.dart';

class AppColors {
  AppColors._();

  // Apple-style primary color - softer blue
  static const primary = Color(0xFF007AFF);
  static const accentWarm = Color(0xFFFF9500);

  // Apple HIG compliant backgrounds
  static const background = CupertinoDynamicColor.withBrightness(
    color: Color(0xFFF2F2F7),
    darkColor: Color(0xFF000000),
  );

  static const card = CupertinoDynamicColor.withBrightness(
    color: Color(0xFFFFFFFF),
    darkColor: Color(0xFF1C1C1E),
  );

  // Apple standard text colors
  static const textPrimary = CupertinoDynamicColor.withBrightness(
    color: Color(0xFF000000),
    darkColor: Color(0xFFFFFFFF),
  );

  static const textSecondary = CupertinoDynamicColor.withBrightness(
    color: Color(0xFF8E8E93),
    darkColor: Color(0xFF8E8E93),
  );

  static const separator = CupertinoDynamicColor.withBrightness(
    color: Color(0xFFC6C6C8),
    darkColor: Color(0xFF38383A),
  );

  // Subtle shadows following Apple's design language
  static const subtleShadow = CupertinoDynamicColor.withBrightness(
    color: Color(0x0D000000),
    darkColor: Color(0x40000000),
  );

  // Blurred bar background
  static const barBackground = CupertinoDynamicColor.withBrightness(
    color: Color(0xF2FFFFFF),
    darkColor: Color(0xF21C1C1E),
  );
}

class AppSpacing {
  AppSpacing._();

  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 16.0;
  static const double lg = 20.0;
  static const double xl = 24.0;
  static const double xxl = 32.0;
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
        letterSpacing: -0.41,
        color: AppColors.textPrimary,
      ),
      navLargeTitleTextStyle: TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.37,
        color: AppColors.textPrimary,
      ),
      actionTextStyle: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.41,
        color: AppColors.primary,
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
