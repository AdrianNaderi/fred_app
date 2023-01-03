import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../globals/widgets/text/custom_boldtext.dart';

class AddSpotTitle extends ConsumerWidget {
  const AddSpotTitle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      alignment: Alignment.centerRight,
      clipBehavior: Clip.none,
      children: const [
        Center(child: CustomBoldText(text: "Ge förslag på platser", size: 16)),
        // CustomXButton(
        //   function: () => context.router.pop().whenComplete(
        //     () {
        //       ref
        //           .read(inputValidationController)
        //           .updateHasPressedAddButton(false);
        //       ref.read(newSpotController).resetState();
        //     },
        //   ),
        // ),
      ],
    );
  }
}
