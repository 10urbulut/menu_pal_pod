import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData.dark().copyWith(
  /// ColorScheme
  colorScheme: ColorScheme.dark(
    brightness: Brightness.dark,
    primary: Colors.deepOrange.shade900.withRed(900), //exmp. button text color
    //exmp. text color, frame of textfields, icons
  ),

  /// FontFamily

  /// AppBarTheme
  appBarTheme: const AppBarTheme(centerTitle: false),

  /// InputDecorationTheme
  inputDecorationTheme: InputDecorationTheme(
    border: UnderlineInputBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  ),

  ////////////////////////// End //////////////////////////
);
