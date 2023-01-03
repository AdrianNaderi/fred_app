import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../widgets/text/custom_boldtext.dart';

class AddFunctionalityTitle extends HookConsumerWidget {
  const AddFunctionalityTitle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //builder
    return Container(
      alignment: Alignment.center,
      child: const CustomBoldText(
        text: "Ge förslag på funktion",
        size: 22,
      ),
    );
  }
}
