import 'package:flutter/cupertino.dart';

class AppColors {
  AppColors._();

  static const primary = Color(0xFF4A90E2);
  static const accentWarm = Color(0xFFFFB347);

  static const background = CupertinoDynamicColor.withBrightness(
    color: Color(0xFFF4F8FF),
    darkColor: Color(0xFF0F1923),
  );

  static const card = CupertinoDynamicColor.withBrightness(
    color: Color(0xFFFFFFFF),
    darkColor: Color(0xFF1A2836),
  );

  static const textPrimary = CupertinoDynamicColor.withBrightness(
    color: Color(0xFF333333),
    darkColor: Color(0xFFE0E0E0),
  );

  static const textSecondary = CupertinoDynamicColor.withBrightness(
    color: Color(0xFF888888),
    darkColor: Color(0xFFA0A0A0),
  );

  static const separator = CupertinoDynamicColor.withBrightness(
    color: Color(0xFFDDE4EE),
    darkColor: Color(0xFF233243),
  );

  static const subtleShadow = CupertinoDynamicColor.withBrightness(
    color: Color(0x1A000000),
    darkColor: Color(0x66000000),
  );

  static const barBackground = CupertinoDynamicColor.withBrightness(
    color: Color(0xCCFFFFFF),
    darkColor: Color(0xCC1A2836),
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
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColors.textPrimary,
        letterSpacing: -0.2,
      ),
      navTitleTextStyle: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
      ),
      navLargeTitleTextStyle: TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimary,
      ),
      actionTextStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppColors.primary,
      ),
      tabLabelTextStyle: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.1,
        color: AppColors.textSecondary,
      ),
    ),
  );
}
