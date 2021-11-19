import 'package:flutter/material.dart';
import './constants.dart';

ThemeData themeData() {
  return ThemeData(
      fontFamily: 'RobotoCondensed',
      textTheme: textTheme(),
      inputDecorationTheme: inputDecorationTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColor: kPrimaryColor,
      scaffoldBackgroundColor: kSecondaryColor);
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(width: 1.5, color: kPrimaryLightColor),
      gapPadding: 10);
  OutlineInputBorder errorInputBorder = OutlineInputBorder(
    gapPadding: 10,
    borderSide: const BorderSide(
      color: Colors.red,
      width: 1.5,
    ),
    borderRadius: BorderRadius.circular(30),
  );
  return InputDecorationTheme(
    fillColor: Colors.white,
    filled: true,
    contentPadding: const EdgeInsets.symmetric(horizontal: 36, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
    errorBorder: errorInputBorder,
  );
}



TextTheme textTheme() {
  return const TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}
