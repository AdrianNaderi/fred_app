import 'package:flutter/cupertino.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants/marpad.dart';

class CustomIconButton extends ConsumerWidget {
  final IconData icon;
  final double iconSize;
  final Color iconColor;
  final Function() onPressed;
  final EdgeInsetsGeometry padding;
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.iconSize,
    required this.iconColor,
    required this.onPressed,
    this.padding = CustomPadding.noPadding,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoButton(
      padding: padding,
      borderRadius: BorderRadius.circular(100),
      onPressed: onPressed,
      child: Icon(
        icon,
        size: iconSize,
        color: iconColor,
      ),
    );
  }
}
