import 'package:flutter/cupertino.dart';
import 'package:fred_app/globals/constants/marpad.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../../globals/constants/colors_fonts/colors.dart';
import '../../../../../../../../globals/constants/decoration/border_radius.dart';
import '../../../../../../globals/widgets/text/custom_bold_text.dart';

class TopBarSelectionItem extends ConsumerWidget {
  final String text;
  final Function() onTap;
  final bool active;
  const TopBarSelectionItem(
      {super.key,
      required this.text,
      required this.onTap,
      required this.active});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Color stateColor =
        active ? CustomColors.brand : CustomColors.brand.withOpacity(0);
    return Container(
      alignment: Alignment.center,
      padding: CustomPadding.verHorButton,
      decoration: BoxDecoration(
        color: stateColor,
        borderRadius: CustomBorderRadius.rDefault,
      ),
      child: CustomBoldText(
        text: text,
        size: 14,
        textAlign: TextAlign.center,
      ),
    );
  }
}
