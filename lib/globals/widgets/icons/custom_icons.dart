import 'package:flutter/material.dart';
import 'package:fred_app/globals/constants/colors_fonts/colors.dart';
import 'package:fred_app/globals/constants/decoration/border_radius.dart';

import '../../constants/decoration/box_shadows.dart';
import '../../constants/dimensions.dart';

//CUSTOM ICONS-------------
class CustomIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color color;
  const CustomIcon({
    super.key,
    required this.icon,
    this.size = 25,
    this.color = CustomColors.primary,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size * tF,
      color: color,
    );
  }
}

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final Color iconColor;
  final double containerSize;

  final Color containerColor;
  const CustomIconButton(
      {super.key,
      required this.icon,
      required this.iconSize,
      required this.iconColor,
      required this.containerSize,
      required this.containerColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerSize * hF,
      width: containerSize * wF,
      decoration: BoxDecoration(
          color: containerColor,
          borderRadius: CustomBorderRadius.r100,
          boxShadow: CustomBoxShadows.cardBuilder),
      child: Icon(
        icon,
        size: iconSize * tF,
        color: iconColor,
      ),
    );
  }
}
