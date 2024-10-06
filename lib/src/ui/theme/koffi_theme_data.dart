import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koffi_unoesc/src/ui/theme/colors.dart';

Theme koffiTheme = Theme(
  data: ThemeData(
    textTheme: GoogleFonts.lexendTextTheme(),
    fontFamily: GoogleFonts.lexend().fontFamily,
    primaryColor: colors["primary"],
    scaffoldBackgroundColor: colors["white"],
    appBarTheme: AppBarTheme(
      backgroundColor: colors["primary"],
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
        backgroundColor: WidgetStatePropertyAll(colors["primary"]),
        padding: const WidgetStatePropertyAll(
          EdgeInsets.all(22.5),
        ),
      ),
    ),
    primaryTextTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.w900,
        color: colors["black"],
        decorationColor: colors["black"],
      ),
      titleMedium: TextStyle(
        fontSize: 32,
        color: colors["black"],
        decorationColor: colors["black"],
        fontWeight: FontWeight.w900,
      ),
      displayMedium: TextStyle(
        fontSize: 24,
        color: colors["white"],
        decorationColor: colors["white"],
        fontWeight: FontWeight.w700,
      ),
      bodyLarge: TextStyle(
        fontSize: 20,
        color: colors["black"],
        decorationColor: colors["black"],
        fontWeight: FontWeight.w700,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        color: colors["black"],
        decorationColor: colors["black"],
        fontWeight: FontWeight.w300,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        color: colors["black"],
        decorationColor: colors["black"],
        fontWeight: FontWeight.w100,
      ),
    ),
    cardColor: colors["primary"],
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: colors["white"],
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
    ),
  ),
  child: Container(),
);
