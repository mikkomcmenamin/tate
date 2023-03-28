import 'package:flutter/material.dart';

ThemeData buildThemeData() {
  return ThemeData(
    fontFamily: 'Inconsolata',
    primaryColor: Colors.black,
    secondaryHeaderColor: Colors.amber,
    scaffoldBackgroundColor: Colors.grey.shade900,
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      bodyMedium: TextStyle(fontSize: 14.0, color: Colors.white),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black54,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      toolbarTextStyle: TextStyle(color: Colors.white), // Set app bar title text color
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.deepPurple, // Set button color
      textTheme: ButtonTextTheme.primary, // Set button text color
    ),
  );
}
