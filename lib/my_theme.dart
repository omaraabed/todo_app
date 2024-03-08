import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color lightColor = Color(0xff5D9CEC);
  static const Color lightGreenColor = Color(0xffDFECDB);
  static const Color greenColor = Color(0xff61E757);
  static ThemeData lightTheme = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: lightColor,
      unselectedItemColor: Colors.grey,
    ),
    primaryColor: lightColor,
    scaffoldBackgroundColor: lightGreenColor,
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.poppins(
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: Colors.white,
      ),
      bodyMedium: GoogleFonts.poppins(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: lightColor,
      ),
      bodySmall: GoogleFonts.poppins(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: lightGreenColor,
      ),
      displaySmall: GoogleFonts.roboto(
        fontWeight: FontWeight.bold,
        fontSize: 12,
        color: Colors.black,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: lightColor,
      iconTheme: IconThemeData(color: Colors.white, size: 30),
      centerTitle: false,
    ),
  );
}
