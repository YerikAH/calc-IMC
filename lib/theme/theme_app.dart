import 'package:flutter/material.dart';

class ThemeApp{
  static const Color grayPale = Color(0xfff6f6f6);
  static const Color black = Color(0xff464646);
  static const Color gray = Color(0xff818181);
  static const Color blue = Color(0xff6abceb);
  static const Color yellow = Color(0xffefc353);
  static const Color green = Color(0xff65a764);
  static const Color red = Color(0xfff58a97);
  static const Color white = Colors.white;

  static final ThemeData appConfigTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: white,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      foregroundColor: black,
      backgroundColor: grayPale,
      centerTitle: true
      
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))
      )
    ),
    textTheme: ThemeData.light().textTheme.copyWith(
      titleMedium: const TextStyle(
        fontFamily: "Poppins",
        color: black,
        fontSize: 16.0,
        fontWeight: FontWeight.w600
      ),
      titleSmall: const TextStyle(
        fontFamily: "Poppins",
        color: black,
        fontSize: 24.0,
        fontWeight: FontWeight.w700
      ),
      titleLarge: 
      const TextStyle(
        fontFamily: "Poppins",
        color: blue,
        fontSize: 32.0,
        fontWeight: FontWeight.w700
      ),
      bodyMedium: const TextStyle(
        fontFamily: "Poppins",
        color: gray,
        fontSize: 16.0,
        fontWeight: FontWeight.w500
      ),
      headlineMedium: const TextStyle(
        fontFamily: "Poppins",
        color: black,
        fontSize: 16.0,
        fontWeight: FontWeight.w500
      ),
      headlineLarge: const TextStyle(
        fontFamily: "Poppins",
        color: black,
        fontSize: 32.0,
        fontWeight: FontWeight.w800
      ),
      headlineSmall: const TextStyle(
        fontFamily: "Poppins",
        color: white,
        fontSize: 16.0,
        fontWeight: FontWeight.w600
      ),
    )
  );
}