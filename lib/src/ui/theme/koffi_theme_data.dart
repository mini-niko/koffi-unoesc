import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const colorPrimary = Color.fromRGBO(199, 121, 101, 1);
const colorBackground = Color.fromRGBO(230, 230, 230, 1);

Theme koffiTheme = Theme(
  data: ThemeData(
    textTheme: GoogleFonts.lexendTextTheme(),
    fontFamily: GoogleFonts.lexend().fontFamily,
    primaryColor: colorPrimary,
    scaffoldBackgroundColor: colorBackground,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          )
        ),
        backgroundColor: const WidgetStatePropertyAll(
          Color.fromRGBO(199, 121, 101, 1)
        ),
        padding: const WidgetStatePropertyAll(
          EdgeInsets.symmetric(vertical: 22.5),
        )
      )
    ),
    primaryTextTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.w900,
        color: Colors.black
      ),
      titleMedium: TextStyle(
        fontSize: 24,
        color:  Color.fromRGBO(230, 230, 230, 1),
        fontWeight: FontWeight.w700
      )
    )
  ),
  child: Container(),
);