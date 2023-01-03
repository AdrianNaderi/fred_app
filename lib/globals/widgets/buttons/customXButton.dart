import 'package:flutter/cupertino.dart';

import '../../constants/colors_fonts/colors.dart';
import '../../constants/decoration/border_radius.dart';
import 'customIconButton.dart';

class CustomXButton extends StatelessWidget {
  final Function()? function;
  final bool isTransparent;
  const CustomXButton({
    super.key,
    required this.function,
    this.isTransparent = false,
  });

  @override
  Widget build(BuildContext context) {
    return isTransparent
        ? CustomIconButton(
            icon: CupertinoIcons.xmark,
            iconSize: 24,
            iconColor: CustomColors.secondary,
            onPressed: function!,
          )
        : Container(
            decoration: BoxDecoration(
                color: CustomColors.secondary,
                border:
                    Border.all(color: CustomColors.primary.withOpacity(0.25)),
                borderRadius: CustomBorderRadius.r100),
            child: CustomIconButton(
              icon: CupertinoIcons.xmark,
              iconSize: 24,
              iconColor: CustomColors.primary,
              onPressed: function!,
            ),
          );
  }
}
