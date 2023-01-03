import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../globals/widgets/spacer.dart';
import '../../../../../../globals/widgets/text/custom_normaltext.dart';

class MVPExploreDetailButton extends ConsumerWidget {
  final String text;
  final double textSize;
  final IconData icon;
  final double iconSize;
  final Color iconColor;
  final Function() onPressed;
  const MVPExploreDetailButton({
    super.key,
    required this.text,
    required this.textSize,
    required this.icon,
    required this.iconSize,
    required this.iconColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Row(
            children: [
              Icon(
                icon,
                size: iconSize,
                color: iconColor,
              ),
              CustomSpacer.w4,
              CustomNormalText(
                text: text,
                size: textSize,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// CustomIconButton(
//             icon: icon,
//             iconSize: iconSize,
//             iconColor: iconColor,
//             onPressed: onPressed,
//           ),