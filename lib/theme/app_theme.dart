import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.pink;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //Primary Color
      primaryColor: Colors.pink,
      //appBarTheme:
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      )
      //Buttons, Texts, etc.
      );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //Primary Color
    primaryColor: Colors.pink,
    //appBarTheme:
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
    scaffoldBackgroundColor: Colors.grey[850],
    //Buttons, Texts, etc.
  );
}
