import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: Colors.black,
  primaryColor: Colors.black,
  textTheme: ThemeData.dark().textTheme.apply(fontFamily: 'Roboto'),
  appBarTheme: const AppBarTheme(
    color: Colors.black,
    surfaceTintColor: Colors.black,
    titleTextStyle: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      fontFamily: 'Roboto',
      color: Colors.white,
    ),
  ),
);
