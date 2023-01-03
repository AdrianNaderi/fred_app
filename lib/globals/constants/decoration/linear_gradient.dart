import 'package:flutter/cupertino.dart';

import '../colors_fonts/colors.dart';

class CustomLinearGradient {
  static Gradient boxBottom = LinearGradient(
    colors: [
      CustomColors.primary.withOpacity(0.8),
      CustomColors.primary.withOpacity(0.0)
    ],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );
}
