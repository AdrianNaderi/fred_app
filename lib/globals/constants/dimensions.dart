import 'package:get/get.dart';

//responsive UI
const double deviceHeight = 844.0;
const double deviceWidth = 390.0;

final double screenHeight = Get.height;
final double screenWidth = Get.width;

final double hF = screenHeight / deviceHeight;
final double wF = screenWidth / deviceWidth;
final double tF = (hF + wF) / 2;

//common app sizes
const double appPadding = 16;
