import 'package:flutter/cupertino.dart';

class AppColors {
  AppColors._();

  // Apple-style primary color - System Blue
  static const primary = Color(0xFF007AFF);
  static const accentWarm = Color(0xFFFF9500);

  // Apple-style backgrounds - cleaner and more neutral
  static const background = CupertinoDynamicColor.withBrightness(
    color: Color(0xFFF2F2F7),
    darkColor: Color(0xFF000000),
  );

  static const card = CupertinoDynamicColor.withBrightness(
    color: Color(0xFFFFFFFF),
    darkColor: Color(0xFF1C1C1E),
  );

  // Apple-style text colors
  static const textPrimary = CupertinoDynamicColor.withBrightness(
    color: Color(0xFF000000),
    darkColor: Color(0xFFFFFFFF),
  );

  static const textSecondary = CupertinoDynamicColor.withBrightness(
    color: Color(0xFF8E8E93),
    darkColor: Color(0xFF98989D),
  );

  static const separator = CupertinoDynamicColor.withBrightness(
    color: Color(0xFFC6C6C8),
    darkColor: Color(0xFF38383A),
  );

  // More subtle shadows following Apple's design
  static const subtleShadow = CupertinoDynamicColor.withBrightness(
    color: Color(0x0D000000),
    darkColor: Color(0x40000000),
  );

  static const barBackground = CupertinoDynamicColor.withBrightness(
    color: Color(0xF2FFFFFF),
    darkColor: Color(0xF21C1C1E),
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
        height: 1.22,
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
        letterSpacing: -0.08,
        color: AppColors.textSecondary,
      ),
    ),
  );
}
