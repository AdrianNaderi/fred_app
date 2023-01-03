import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:fred_app/globals/widgets/buttons/customXButton.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../globals/widgets/text/custom_boldtext.dart';
import '../../../../controllers/input_validation_controller.dart';
import '../../../../controllers/new_spot_controller.dart';

class ModalTopBar extends ConsumerWidget {
  const ModalTopBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      alignment: Alignment.centerRight,
      clipBehavior: Clip.none,
      children: [
        const Center(
            child: CustomBoldText(text: "Ge förslag på platser", size: 16)),
        CustomXButton(
          function: () => context.router.pop().whenComplete(
            () {
              ref
                  .read(inputValidationController)
                  .updateHasPressedAddButton(false);
              ref.read(newSpotController).resetState();
            },
          ),
        ),
      ],
    );
  }
}
