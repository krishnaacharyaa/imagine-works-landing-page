import 'package:imagine_works_landing_page/core/util/constants.dart';
import 'package:flutter/material.dart';

class CustomTheme {
  static getTheme() {
    return ThemeData(
        fontFamily: fontFamily,
        textTheme: const TextTheme(
          displayLarge:
              TextStyle(fontSize: 57, letterSpacing: 0.25, height: 64 / 57),
          displayMedium:
              TextStyle(fontSize: 45, letterSpacing: 0.0, height: 52 / 45),
          displaySmall:
              TextStyle(fontSize: 36, letterSpacing: 0.0, height: 44 / 36),
          headlineLarge:
              TextStyle(fontSize: 32, letterSpacing: 0.0, height: 40 / 32),
          headlineMedium:
              TextStyle(fontSize: 28, letterSpacing: 0.0, height: 36 / 28),
          headlineSmall:
              TextStyle(fontSize: 24, letterSpacing: 0.0, height: 32 / 24),
          titleLarge:
              TextStyle(fontSize: 22, letterSpacing: 0.0, height: 28 / 22),
          titleMedium:
              TextStyle(fontSize: 16, letterSpacing: 0.15, height: 24 / 16),
          titleSmall:
              TextStyle(fontSize: 14, letterSpacing: 0.10, height: 20 / 14),
          labelLarge:
              TextStyle(fontSize: 14, letterSpacing: 0.10, height: 20 / 14),
          labelMedium:
              TextStyle(fontSize: 12, letterSpacing: 0.50, height: 16 / 12),
          labelSmall:
              TextStyle(fontSize: 11, letterSpacing: 0.50, height: 16 / 11),
        ),
        colorScheme: const ColorScheme.light(primary: gold),
        useMaterial3: true);
  }
}
