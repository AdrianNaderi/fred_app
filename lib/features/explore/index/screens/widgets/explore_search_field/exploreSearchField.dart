import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../globals/constants/colors_fonts/colors.dart';
import '../../../../../../../globals/constants/decoration/border_radius.dart';
import '../../../../../../../globals/constants/marpad.dart';

class ExploreSearchField extends ConsumerWidget {
  const ExploreSearchField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: CustomPadding.allDefault,
      child: CupertinoSearchTextField(
          autocorrect: false,
          decoration: BoxDecoration(
            borderRadius: CustomBorderRadius.r100,
            border: Border.all(
              color: CustomColors.grey,
            ),
          ),
          placeholder: "Sök på plats, mat, aktivitet och mer",
          placeholderStyle: const TextStyle(
            fontSize: 12,
            color: CustomColors.grey,
          ),
          itemColor: CustomColors.primary,
          prefixInsets: CustomPadding.horDefault),
    );
  }
}
