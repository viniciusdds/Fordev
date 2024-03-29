import 'package:flutter/material.dart';

ThemeData makeAppTheme(){

  final primaryColor = Color.fromRGBO(136, 14, 79, 1);
  final primaryColorDark = Color.fromRGBO(96, 0, 39, 1);
  final primaryColorLight = Color.fromRGBO(188, 71, 123, 1);

  return ThemeData(
      primaryColor: primaryColor,
      primaryColorDark: primaryColorDark,
      primaryColorLight: primaryColorLight,
      colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: primaryColor
      ),
      backgroundColor: Colors.white,
      textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: primaryColorDark
          )
      ),
      inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(
              color: primaryColor
          ),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: primaryColorLight)
          ),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: primaryColor)
          ),
          alignLabelWithHint: true
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: primaryColor,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            )
        ),
      ),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              primary: primaryColor
          )
      )
  );
}