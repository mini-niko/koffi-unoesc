import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const colorPrimary = Color.fromRGBO(199, 121, 101, 1);
const colorBackground = Color.fromRGBO(230, 230, 230, 1);

Theme koffiTheme = Theme(
  data: ThemeData(
    textTheme: GoogleFonts.lexendTextTheme(),
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
          EdgeInsets.only(top: 22, bottom: 22),
        )
      )
    )
  ),
  child: Container(),
);