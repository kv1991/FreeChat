import 'package:flutter/material.dart';
import 'package:free_chat/constants.dart';

const appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: kPrimaryColor,
    appBarTheme: appBarTheme,
    colorScheme: const ColorScheme.light().copyWith(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor
    )
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    appBarTheme: appBarTheme,
    colorScheme: const ColorScheme.dark().copyWith(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor
    )
  );
}