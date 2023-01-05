import 'package:flutter/material.dart';
import 'package:fred_app/globals/constants/colors_fonts/colors.dart';
import 'package:fred_app/globals/constants/decoration/border_radius.dart';
import 'package:fred_app/globals/constants/marpad.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../widgets/text/custom_normal_text.dart';

class AddFunctionalityButton extends ConsumerWidget {
  final Function()? onPressed;
  const AddFunctionalityButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      alignment: Alignment.center,
      padding: CustomPadding.verHorButton,
      width: double.infinity,
      decoration: BoxDecoration(
        color: CustomColors.brand,
        borderRadius: CustomBorderRadius.rDefault,
      ),
      child: GestureDetector(
        onTap: onPressed,
        child: const CustomNormalText(
          text: "Lägg till förslag",
          size: 18,
        ),
      ),
    );
  }
}
