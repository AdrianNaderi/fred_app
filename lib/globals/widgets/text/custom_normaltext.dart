import 'package:flutter/cupertino.dart';
import 'package:fred_app/globals/constants/colors_fonts/colors.dart';

import '../../constants/dimensions.dart';

class CustomNormalText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final TextAlign textAlign;
  const CustomNormalText(
      {super.key,
      required this.text,
      required this.size,
      this.color = CustomColors.primary,
      this.textAlign = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size * tF,
        color: color,
      ),
      textAlign: textAlign,
    );
  }
}
