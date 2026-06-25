import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'typography.dart';

class AppColors {
  static const background = Color(0xFF0A0A0A);
  static const surface = Color(0xFF131313);
  static const surfaceContainer = Color(0xFF1C1B1B);
  static const surfaceVariant = Color(0xFF353534);
  static const onSurface = Color(0xFFE5E2E1);
  static const onSurfaceVariant = Color(0xFFE9BCB6);
  static const primaryContainer = Color(0xFFE50914);
  static const onPrimaryContainer = Color(0xFFFFFFFF);
  static const secondary = Color(0xFFC8C6C5);
  static const onSecondaryContainer = Color(0xFFB7B5B4);
}

final appTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.background,
  fontFamily: 'PlusJakartaSans',
  textTheme: TextTheme(
    displayLarge: GoogleFonts.plusJakartaSans(
      fontSize: 40,
      fontWeight: FontWeight.w800,
      letterSpacing: -0.02,
      color: Colors.white,
    ),
    displayMedium: GoogleFonts.plusJakartaSans(
      fontSize: 32,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.01,
      color: Colors.white,
    ),
    headlineMedium: GoogleFonts.plusJakartaSans(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.01,
      color: Colors.white,
    ),
    headlineSmall: GoogleFonts.plusJakartaSans(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    bodyMedium: GoogleFonts.plusJakartaSans(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 1.5,
      color: AppColors.onSurface,
    ),
    labelLarge: GoogleFonts.plusJakartaSans(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.05,
      color: Colors.white,
    ),
    labelMedium: GoogleFonts.plusJakartaSans(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.05,
      color: AppColors.onSurface,
    ),
    labelSmall: GoogleFonts.plusJakartaSans(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColors.onSurface,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primaryContainer,
      foregroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.white,
      side: BorderSide.none,
      backgroundColor: Colors.white.withOpacity(0.05),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.surface,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
    hintStyle: TextStyle(color: AppColors.onSurface.withOpacity(0.5)),
  ),
  colorScheme: const ColorScheme.dark(
    primary: AppColors.primaryContainer,
    secondary: AppColors.secondary,
    surface: AppColors.surface,
    background: AppColors.background,
    onSurface: AppColors.onSurface,
    error: Color(0xFFFFB4AB),
    onError: Color(0xFF690005),
  ),
);