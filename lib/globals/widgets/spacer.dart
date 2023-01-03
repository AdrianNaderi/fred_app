import 'package:flutter/material.dart';

import '../constants/dimensions.dart';

//app default padding and sizes

class CustomSpacer {
  //height
  static Widget h(double h) {
    return SizedBox(height: hF * h);
  }

  static Widget hDefault = SizedBox(height: hF * appPadding);
  static Widget h2 = SizedBox(height: hF * 2);
  static Widget h4 = SizedBox(height: hF * 4);
  static Widget h6 = SizedBox(height: hF * 6);
  static Widget h8 = SizedBox(height: hF * 8);
  static Widget h10 = SizedBox(height: hF * 10);
  static Widget h12 = SizedBox(height: hF * 12);
  static Widget h14 = SizedBox(height: hF * 14);
  static Widget h16 = SizedBox(height: hF * 16);
  static Widget h20 = SizedBox(height: hF * 20);
  static Widget h24 = SizedBox(height: hF * 24);
  static Widget h86 = SizedBox(height: hF * 86);

  //width
  static Widget w(double w) {
    return SizedBox(width: hF * w);
  }

  static Widget wDefault = SizedBox(width: wF * appPadding);
  static Widget w2 = SizedBox(width: wF * 2);
  static Widget w4 = SizedBox(width: wF * 4);
  static Widget w6 = SizedBox(width: wF * 6);
  static Widget w8 = SizedBox(width: wF * 8);
  static Widget w10 = SizedBox(width: wF * 10);
  static Widget w12 = SizedBox(width: wF * 12);
  static Widget w14 = SizedBox(width: wF * 14);
  static Widget w16 = SizedBox(width: wF * 16);
}
