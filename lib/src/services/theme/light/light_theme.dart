import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mortgage_magic_demo/src/constants/design/paddings.dart';

import '../extensions/colors_theme.dart';

const _theme = Colors.white;
const _opposite = Colors.black;
const _extraColor = Color(0xff757575);

const _mainAccent = Color(0xff10462D);
const _primaryColor = Color(0xff1976D2);
const _primaryAccent = Color(0xff042852);
const _extraTextColor = Color(0xffE2E2E2);
const _secondaryAccent = Color(0xffE4E5E8);
const _backgroundColor = Color(0xffEEEEEE);

final lightTheme = ThemeData(
  useMaterial3: false,
  brightness: Brightness.light,
  primaryColor: _primaryColor,
  scaffoldBackgroundColor: _theme,
  textTheme: GoogleFonts.robotoTextTheme().copyWith(
    headlineSmall: GoogleFonts.teko(
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    headlineMedium: GoogleFonts.teko(
      height: 1,
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
    titleSmall: GoogleFonts.poppins(
      height: 1.2,
      fontSize: 12,
    ),
  ),
  iconTheme: const IconThemeData(
    color: _opposite,
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      padding: emptyPadding,
      minimumSize: Size.zero,
      foregroundColor: _theme,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      minimumSize: const Size.fromHeight(40),
      foregroundColor: _primaryColor,
      side: const BorderSide(
        width: 1.5,
        color: _primaryColor,
      ),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      minimumSize: const Size.fromHeight(40),
      foregroundColor: _theme,
      backgroundColor: _primaryColor,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    isCollapsed: false,
    fillColor: _theme,
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: _extraColor,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.red,
      ),
    ),
    errorStyle: TextStyle(fontStyle: FontStyle.italic),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 0.5,
        color: _extraColor,
      ),
    ),
    outlineBorder: BorderSide(),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: _primaryColor,
      ),
    ),
    disabledBorder: OutlineInputBorder(),
    focusedErrorBorder: OutlineInputBorder(),
    contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
  ),
  extensions: {
    ColorTheme(
      theme: _theme,
      opposite: _opposite,
      extra: _extraColor,
      mainAccent: _mainAccent,
      primary: _primaryColor,
      primaryAccent: _primaryAccent,
      primaryText: _extraTextColor,
      secondaryAccent: _secondaryAccent,
      primaryBackground: _backgroundColor,
    ),
  },
);
