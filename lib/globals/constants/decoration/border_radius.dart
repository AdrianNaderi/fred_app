import 'package:flutter/cupertino.dart';

class CustomBorderRadius {
  static BorderRadiusGeometry r(double r) {
    return BorderRadius.circular(r);
  }

  static BorderRadiusGeometry rDefault = BorderRadius.circular(16);
  static BorderRadiusGeometry r100 = BorderRadius.circular(100);

  static BorderRadiusGeometry topDefault = const BorderRadius.only(
      topLeft: Radius.circular(16), topRight: Radius.circular(16));

  static BorderRadiusGeometry bottomDefault = const BorderRadius.only(
      bottomLeft: Radius.circular(16), bottomRight: Radius.circular(16));
}
