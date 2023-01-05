import 'package:flutter/cupertino.dart';


import '../../constants/colors_fonts/colors.dart';
import '../../constants/dimensions.dart';

class CustomBoldText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final TextAlign textAlign;
  const CustomBoldText({
    super.key,
    required this.text,
    required this.size,
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
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }
}
