import 'package:flutter/cupertino.dart';
import 'package:fred_app/features/home/controllers/input_validation_controller.dart';
import 'package:fred_app/features/home/controllers/new_spot_controller.dart';
import 'package:fred_app/features/home/screens/widgets/bottom_modal/bottom_modal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../globals/constants/colors_fonts/colors.dart';

class TabsAddButton extends ConsumerWidget {
  const TabsAddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => showCupertinoModalPopup(
        context: context,
        builder: (context) => const AddSpotBottomModal(),
      ).whenComplete(
        () {
          ref.read(inputValidationController).resetState();
          ref.read(newSpotController).resetState();
        },
      ),
      child: Container(
        alignment: Alignment.center,
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: CustomColors.brand,
          borderRadius: BorderRadius.circular(100),
        ),
        child: const Icon(
          CupertinoIcons.add_circled,
          size: 30,
        ),
      ),
    );
  }
}
