import 'package:flutter/material.dart';


import 'dimensions.dart';

class CustomPadding {
  static const noPadding = EdgeInsets.all(0);

  //all----------------------------------------------------
  static all(double x) {
    return EdgeInsets.all(x);
  }

  static const allDefault = EdgeInsets.all(appPadding);
  

  //left----------------------------------------------------
  static const leftDefault = EdgeInsets.only(left: appPadding);

  //horizontal----------------------------------------------------
  static hor(double hor) {
    return EdgeInsets.symmetric(horizontal: hor);
  }

  static const horDefault = EdgeInsets.symmetric(horizontal: appPadding);

  //vertical----------------------------------------------------
  static ver(double x) {
    return EdgeInsets.symmetric(vertical: x);
  }

  static const verDefault = EdgeInsets.symmetric(vertical: appPadding);

  //bottom
  static bottom(double x) {
    EdgeInsets.only(bottom: x * hF);
  }

  static const bottomDefault = EdgeInsets.only(bottom: appPadding);
  //mix----------------------------------------------------
  static verHor(double v, double h) {
    return EdgeInsets.symmetric(vertical: v, horizontal: h);
  }

  static const verHorButton =
      EdgeInsets.symmetric(vertical: appPadding / 2, horizontal: appPadding);
}
