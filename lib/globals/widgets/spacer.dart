import 'package:flutter/material.dart';

import '../constants/dimensions.dart';

//app default padding and sizes

class CustomSpacer {
  //height
  static Widget h(double h) {
    return SizedBox(height: hF * h);
  }

  static Widget hDefault = const SizedBox(height: appPadding);
  static Widget hIcon = const SizedBox(height: appPadding / 2);
  static Widget h2 = const SizedBox(height: 2);
  static Widget h4 = const SizedBox(height: 4);
  static Widget h6 = const SizedBox(height: 6);
  static Widget h8 = const SizedBox(height: 8);
  static Widget h10 = const SizedBox(height: 10);
  static Widget h12 = const SizedBox(height: 12);
  static Widget h14 = const SizedBox(height: 14);
  static Widget h16 = const SizedBox(height: 16);
  static Widget h20 = const SizedBox(height: 20);
  static Widget h24 = const SizedBox(height: 24);
  static Widget h86 = const SizedBox(height: 86);

  //width
  static Widget w(double w) {
    return SizedBox(width: hF * w);
  }

  static Widget wDefault = const SizedBox(width: appPadding);
  static Widget wIcon = const SizedBox(width: appPadding / 2);
  static Widget w2 = const SizedBox(width: 2);
  static Widget w4 = const SizedBox(width: 4);
  static Widget w6 = const SizedBox(width: 6);
  static Widget w8 = const SizedBox(width: 8);
  static Widget w10 = const SizedBox(width: 10);
  static Widget w12 = const SizedBox(width: 12);
  static Widget w14 = const SizedBox(width: 14);
  static Widget w16 = const SizedBox(width: 16);
}
