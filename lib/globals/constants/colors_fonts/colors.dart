import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'fonts.dart';

//SystemUI
void lightUi = SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
void darkUi = SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

//colors
class CustomColors {
  static const primary = CupertinoColors.black;
  static const secondary = CupertinoColors.white;
  static const background = CupertinoColors.white;
  static const grey = Color(0xFFE9E9E9);
  static const greyText = Color(0xFFAFAFAF);
  static const error = CupertinoColors.systemRed;

  static const brand = Color(0xFFFFB931);
  static const active = secondary;
  static const inactive = Color(0xFFF3F3F3);
}

class CustomTheme {
  //theme
  static const appTheme = CupertinoThemeData(
    primaryColor: CustomColors.primary,
    barBackgroundColor: CustomColors.secondary,
    brightness: Brightness.light,
    scaffoldBackgroundColor: CustomColors.background,
    textTheme: CupertinoTextThemeData(
      navActionTextStyle: CustomFonts.lightNavTitle,
      navTitleTextStyle: CustomFonts.lightNavTitle,
      primaryColor: CustomColors.primary,
      textStyle: CustomFonts.lightMainText,
    ),
  );
}
