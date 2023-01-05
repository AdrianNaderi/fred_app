import 'package:flutter/cupertino.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants/colors_fonts/colors.dart';
import '../../widgets/text/custom_bold_text.dart';

class CustomTopBarName extends ConsumerWidget {
  const CustomTopBarName({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Expanded(
      child: CustomBoldText(
        text: "fred",
        size: 32,
        color: CustomColors.primary,
        textAlign: TextAlign.left,
      ),
    );
  }
}
