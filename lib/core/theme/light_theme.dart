import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: Colors.white,
  primaryColor: Colors.white,
  textTheme: ThemeData.light().textTheme.apply(fontFamily: 'Roboto'),
  appBarTheme: const AppBarTheme(
    color: Colors.white,
    surfaceTintColor: Colors.white,
    titleTextStyle: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      fontFamily: 'Roboto',
      color: Colors.black,
    ),
  ),
);
