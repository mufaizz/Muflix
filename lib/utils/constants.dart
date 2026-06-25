class AppSpacing {
  static const double marginPage = 20.0;
  static const double gutterCard = 12.0;
  static const double sectionGap = 32.0;
  static const double stackSm = 8.0;
  static const double stackMd = 16.0;
}

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

// Re-export for convenience
export 'package:muflix/utils/constants.dart' show AppColors, AppSpacing;