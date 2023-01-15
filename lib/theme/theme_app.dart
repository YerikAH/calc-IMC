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
    textTheme: ThemeData.light().textTheme.copyWith(
      titleMedium: const TextStyle(
        fontFamily: "Poppins",
        color: black,
        fontSize: 16.0,
        fontWeight: FontWeight.w600
      )
    )
  );
}