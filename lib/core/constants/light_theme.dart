import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class LightTheme {
  static final themeData = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsManager.mainColor,
      brightness: Brightness.light,
      primary: ColorsManager.mainColor,
      onPrimary: ColorsManager.white,
      secondary: ColorsManager.mainBlue,
      onSecondary: ColorsManager.white,
      error: Colors.red,
      onError: Colors.red,
      surface: ColorsManager.white,
      onSurface: ColorsManager.black,
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.roboto(),
      displayMedium: GoogleFonts.roboto(),
      displaySmall: GoogleFonts.roboto(),
      headlineLarge: GoogleFonts.roboto(),
      headlineMedium: GoogleFonts.roboto(),
      headlineSmall: GoogleFonts.roboto(),
      titleLarge: GoogleFonts.roboto(),
      titleMedium: GoogleFonts.roboto(),
      titleSmall: GoogleFonts.roboto(),
      bodyLarge: GoogleFonts.roboto(),
      bodyMedium: GoogleFonts.roboto(),
      bodySmall: GoogleFonts.roboto(),
      labelLarge: GoogleFonts.roboto(),
      labelMedium: GoogleFonts.roboto(),
      labelSmall: GoogleFonts.roboto(),
    ),
  );
}
