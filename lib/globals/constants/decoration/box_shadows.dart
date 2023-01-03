import 'package:flutter/cupertino.dart';

import '../colors_fonts/colors.dart';

class CustomBoxShadows {
  static List<BoxShadow> cardBuilder = [
    BoxShadow(
      color: CustomColors.primary.withOpacity(0.2),
      blurRadius: 20,
      offset: const Offset(0, 2),
    )
  ];
}
