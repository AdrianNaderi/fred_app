import 'package:flutter/cupertino.dart';
import 'package:fred_app/globals/constants/marpad.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../globals/widgets/text/custom_bold_text.dart';

class FavoriteFilterListTitle extends ConsumerWidget {
  const FavoriteFilterListTitle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Padding(
      padding: CustomPadding.allDefault,
      child: CustomBoldText(text: "Filtrera efter tags", size: 15),
    );
  }
}
