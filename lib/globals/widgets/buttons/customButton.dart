import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants/marpad.dart';
import '../text/custom_normaltext.dart';

class CustomButton extends ConsumerWidget {
  final String text;
  final Color textColor;
  final double textSize;
  final Color buttonColor;
  final Function() onPressed;
  final EdgeInsetsGeometry padding;
  const CustomButton({
    super.key,
    required this.text,
    required this.textColor,
    required this.buttonColor,
    required this.onPressed,
    this.padding = CustomPadding.verHorButton,
    this.textSize = 16,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoButton(
      padding: padding,
      color: buttonColor,
      borderRadius: BorderRadius.circular(100),
      onPressed: onPressed,
      child: CustomNormalText(
        text: text,
        size: textSize,
        color: textColor,
      ),
    );
  }
}
