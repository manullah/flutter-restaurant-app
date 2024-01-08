import 'package:flutter/material.dart';

class TTextTheme {
  TTextTheme._();

  static final TextTheme lightTextTheme = TextTheme(
    displayLarge: const TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
    displayMedium: const TextStyle().copyWith(fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.black),
    displaySmall: const TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.black),
    headlineLarge: const TextStyle().copyWith(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
    headlineMedium: const TextStyle().copyWith(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
    headlineSmall: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
    titleLarge: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),
    titleMedium: const TextStyle().copyWith(fontSize: 16.0, color: Colors.black),
    titleSmall: const TextStyle().copyWith(fontSize: 14.0, color: Colors.black),
    bodyLarge: const TextStyle().copyWith(fontSize: 16.0, color: Colors.black),
    bodyMedium: const TextStyle().copyWith(fontSize: 14.0, color: Colors.black),
    bodySmall: const TextStyle().copyWith(fontSize: 12.0, color: Colors.black),
    labelLarge: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.5)),
    labelMedium: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.black.withOpacity(0.5)),
    labelSmall: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.5)),
  );

  static final TextTheme darkTextTheme = TextTheme(
    displayLarge: const TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
    displayMedium: const TextStyle().copyWith(fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.white),
    displaySmall: const TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
    headlineLarge: const TextStyle().copyWith(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
    headlineMedium: const TextStyle().copyWith(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
    headlineSmall: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),
    titleLarge: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),
    titleMedium: const TextStyle().copyWith(fontSize: 16.0, color: Colors.white),
    titleSmall: const TextStyle().copyWith(fontSize: 14.0, color: Colors.white),
    bodyLarge: const TextStyle().copyWith(fontSize: 16.0, color: Colors.white),
    bodyMedium: const TextStyle().copyWith(fontSize: 14.0, color: Colors.white),
    bodySmall: const TextStyle().copyWith(fontSize: 12.0, color: Colors.white),
    labelLarge: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.6)),
    labelMedium: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w600, color: Colors.white.withOpacity(0.6)),
    labelSmall: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.w500, color: Colors.white.withOpacity(0.6)),
  );
}
