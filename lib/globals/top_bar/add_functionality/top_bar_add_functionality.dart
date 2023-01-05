import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants/colors_fonts/colors.dart';
import '../../constants/decoration/border_radius.dart';
import 'modal_popup/add_functionality_modal.dart';

class AddFunctionalityIcon extends ConsumerWidget {
  const AddFunctionalityIcon({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return const AddFunctionalityModal();
        },
      ),
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: CustomColors.brand, borderRadius: CustomBorderRadius.r100),
        child: const Icon(
          CupertinoIcons.bubble_left,
        ),
      ),
    );
  }
}
