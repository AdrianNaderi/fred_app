import 'package:flutter/cupertino.dart';

import '../../constants/colors_fonts/colors.dart';
import '../../constants/dimensions.dart';

class CustomFilterTitle extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final TextAlign textAlign;
  const CustomFilterTitle({
    super.key,
    required this.text,
    required this.size,
    this.color = CustomColors.primary,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: appPadding, right: appPadding, bottom: appPadding / 2),
      child: Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
          fontSize: size * tF,
          fontWeight: FontWeight.bold,
          color: color,
          height: 1.5,
          letterSpacing: 0.03,
        ),
      ),
    );
  }
}
