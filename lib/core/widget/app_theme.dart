import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

Color facebookButtonBackground = HexColor("#1E2F97");
Color continueWithColor = Colors.white60;
Color continueWithGoogle = Colors.black54;
Color googleTextColor = Colors.black87;

ThemeData appLightTheme = ThemeData(
  colorScheme: const ColorScheme(
    primary: Colors.pink,
    brightness: Brightness.light,
    onPrimary: Colors.pink,
    secondary: Color.fromRGBO(48, 0, 48, 1),
    onSecondary: Color.fromARGB(100, 6, 12, 47),
    error: Colors.red,
    onError: Colors.red,
    background: Colors.white,
    onBackground: Colors.white,
    surface: Colors.white,
    onSurface: Colors.white,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: const MaterialStatePropertyAll<Color>(Colors.pink),
      elevation: const MaterialStatePropertyAll<double>(2.0),
      shape: MaterialStatePropertyAll<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide.none,
    ),
    filled: true,
    fillColor: Colors.grey.withOpacity(0.2),
  ),
  textTheme: TextTheme(
      displayMedium: GoogleFonts.lato(color: Colors.pink, fontSize: 35),
      displaySmall: GoogleFonts.handlee(fontSize: 35)),
);

ThemeData appDarkTheme = ThemeData();

extension AppTheme on BuildContext {
  ThemeData get lightTheme => appLightTheme;

  ThemeData get darkTheme => appDarkTheme;
}