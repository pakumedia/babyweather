import 'package:flutter/cupertino.dart';

class AppColors {
  AppColors._();

  // Apple-like system blue
  static const primary = Color(0xFF007AFF);
  static const primaryDark = Color(0xFF0A84FF);
  
  // Accent colors
  static const accentWarm = Color(0xFFFF9500);
  static const accentGreen = Color(0xFF34C759);
  static const accentRed = Color(0xFFFF3B30);

  // Background colors - Apple system colors
  static const background = CupertinoDynamicColor.withBrightness(
    color: Color(0xFFF2F2F7),
    darkColor: Color(0xFF000000),
  );

  // Card colors
  static const card = CupertinoDynamicColor.withBrightness(
    color: Color(0xFFFFFFFF),
    darkColor: Color(0xFF1C1C1E),
  );

  // Secondary card (for grouped sections)
  static const secondaryCard = CupertinoDynamicColor.withBrightness(
    color: Color(0xFFF2F2F7),
    darkColor: Color(0xFF1C1C1E),
  );

  // Text colors
  static const textPrimary = CupertinoDynamicColor.withBrightness(
    color: Color(0xFF000000),
    darkColor: Color(0xFFFFFFFF),
  );

  static const textSecondary = CupertinoDynamicColor.withBrightness(
    color: Color(0xFF8E8E93),
    darkColor: Color(0xFF8E8E93),
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

  // Shadow colors
  static const subtleShadow = CupertinoDynamicColor.withBrightness(
    color: Color(0x0D000000),
    darkColor: Color(0x40000000),
  );

  // Bar background
  static const barBackground = CupertinoDynamicColor.withBrightness(
    color: Color(0xF0FFFFFF),
    darkColor: Color(0xF01C1C1E),
  );
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
        height: 1.235,
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
        height: 1.117,
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
      dateTimePickerTextStyle: TextStyle(
        fontSize: 21,
        fontWeight: FontWeight.w400,
        color: AppColors.textPrimary,
        letterSpacing: -0.41,
      ),
    ),
  );
}
