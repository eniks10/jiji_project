import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiji_project/theme/app_colors.dart';

//Text Theme
final baseFontTheme = GoogleFonts.poppinsTextTheme();
final TextTheme jijiTextTheme = baseFontTheme.copyWith(
  headlineLarge: baseFontTheme.headlineLarge?.copyWith(
    fontWeight: FontWeight.w700,
    fontSize: 32,
    color: const Color(0xFF1A1A1A),
    letterSpacing: -0.5,
  ),

  headlineSmall: baseFontTheme.headlineSmall?.copyWith(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: const Color(0xFF8E8E93),
    letterSpacing: 0.5,
  ),

  headlineMedium: baseFontTheme.headlineMedium?.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w700,
  ),

  bodyLarge: baseFontTheme.bodyLarge?.copyWith(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    height: 1.6,
  ),

  titleSmall: baseFontTheme.bodyMedium?.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  ),
);

final baseOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(15),
  borderSide: BorderSide.none,
);

final InputDecorationTheme myInputDecorationTheme = InputDecorationTheme(
  filled: true,
  fillColor: AppColors.inputBackground,
  errorStyle: baseFontTheme.bodyMedium?.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.youtubeRed,
  ),
  enabledBorder: baseOutlineInputBorder,
  focusedBorder: baseOutlineInputBorder,

  errorBorder: baseOutlineInputBorder.copyWith(
    borderSide: BorderSide(color: AppColors.youtubeRed),
  ),

  focusedErrorBorder: baseOutlineInputBorder,
  disabledBorder: baseOutlineInputBorder,
);

class AppTheme {
  static final themeData = ThemeData(
    scaffoldBackgroundColor: AppColors.background,
    textTheme: jijiTextTheme,
    inputDecorationTheme: myInputDecorationTheme,
  );
}
