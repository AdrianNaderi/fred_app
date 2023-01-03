import 'package:flutter/cupertino.dart';

import '../../constants/colors_fonts/colors.dart';
import '../../constants/dimensions.dart';

class CustomFilterBody extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final TextAlign textAlign;
  const CustomFilterBody({
    super.key,
    required this.text,
    this.size = 12,
    this.color = CustomColors.primary,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: size * tF,
        color: color,
        letterSpacing: 0.05,
      ),
    );
  }
}
