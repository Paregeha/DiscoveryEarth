import 'package:flutter/material.dart';

import 'app_typography.dart';

abstract final class AppTheme {
  static ThemeData get light {
    return ThemeData(
      textTheme: const TextTheme(
        displayLarge: AppTypography.mainHeadText,
        headlineMedium: AppTypography.titleSection,
        titleLarge: AppTypography.cardTitleText,
        titleMedium: AppTypography.cardTitleText2,
        bodyLarge: AppTypography.infoTextSection,
        bodyMedium: AppTypography.cardDescriptionText,
        bodySmall: AppTypography.anyText,
        labelLarge: AppTypography.buttonText,
        labelMedium: AppTypography.navBarText,
        labelSmall: AppTypography.anyText2,
      ),
    );
  }
}
