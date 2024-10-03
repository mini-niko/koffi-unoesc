import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Theme koffiTheme = Theme(
  data: ThemeData(
    textTheme: GoogleFonts.lexendTextTheme(),
    colorScheme: ColorScheme.fromSeed(
        seedColor: const Color.fromRGBO(199, 121, 101, 1),
    )
  ),
  child: Container(),
);