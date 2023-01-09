import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.grey.shade300,
      fontFamily: 'Bebas',
      textTheme: textTheme());
}

TextTheme textTheme() {
  return const TextTheme(
    headline1: TextStyle(
        color: Colors.black, fontSize: 32, fontWeight: FontWeight.normal),
    headline2: TextStyle(
        color: Colors.black, fontSize: 24, fontWeight: FontWeight.normal),
    headline3: TextStyle(
        color: Colors.black, fontSize: 18, fontWeight: FontWeight.normal),
    headline4: TextStyle(
        color: Colors.black, fontSize: 16, fontWeight: FontWeight.normal),
    headline5: TextStyle(
        color: Colors.black, fontSize: 14, fontWeight: FontWeight.normal),
    bodyText1: TextStyle(
        color: Colors.black45, fontSize: 18, fontWeight: FontWeight.normal),
    bodyText2: TextStyle(
        color: Colors.black, fontSize: 12, fontWeight: FontWeight.normal),
    
  );
}
