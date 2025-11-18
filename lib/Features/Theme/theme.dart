import 'package:flutter/material.dart';
import 'package:myapp/Data/Color/color.dart';

// This is the ligh mode code
ThemeData lightMode =  ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
  surface: white,
  primary: black,
  secondary: buttonColor
  ),
);




//This is the dar mode code
ThemeData darkMode =  ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
  surface: black,
   primary: white,
  secondary: buttonColor
  
  ),
);