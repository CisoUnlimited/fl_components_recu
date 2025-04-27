import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.lightBlueAccent;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
    listTileTheme: const ListTileThemeData(iconColor: primary),
  );
}
