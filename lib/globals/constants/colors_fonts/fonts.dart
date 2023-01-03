import 'package:flutter/material.dart';

import 'colors.dart';

class CustomFonts {
  //font size
  static const double titleSize = 20;
  static const double bodySize = 18;

  //fonts
  static const darkNavTitle = TextStyle(
      fontFamily: "LatoCode",
      color: CustomColors.secondary,
      fontSize: titleSize,
      fontWeight: FontWeight.bold);
  static const darkMainText = TextStyle(
      fontFamily: "LatoCode",
      color: CustomColors.secondary,
      fontSize: bodySize,
      fontWeight: FontWeight.normal);
  static const darkButtonText = TextStyle(
      fontFamily: "LatoCode",
      color: CustomColors.secondary,
      fontSize: bodySize,
      fontWeight: FontWeight.bold);
  static const lightNavTitle = TextStyle(
      fontFamily: "LatoCode",
      color: CustomColors.primary,
      fontSize: titleSize,
      fontWeight: FontWeight.bold);
  static const lightMainText = TextStyle(
      fontFamily: "LatoCode",
      color: CustomColors.primary,
      fontSize: bodySize,
      fontWeight: FontWeight.normal);
  static const lightButtonText = TextStyle(
      fontFamily: "LatoCode",
      color: CustomColors.secondary,
      fontSize: bodySize,
      fontWeight: FontWeight.bold);
}
