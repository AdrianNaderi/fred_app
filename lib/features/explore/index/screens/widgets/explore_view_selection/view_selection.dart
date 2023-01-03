import 'package:flutter/cupertino.dart';
import 'package:fred_app/globals/constants/marpad.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../../globals/constants/colors_fonts/colors.dart';
import '../../../../../../../../globals/constants/decoration/border_radius.dart';
import '../../../controllers/explore_view_selection_controller.dart';
import 'view_selection_item.dart';

class ExploreViewSelection extends ConsumerWidget {
  const ExploreViewSelection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<String> viewItems =
        ref.read(exploreViewSelectionController).viewState.keys.toList();

    return Container(
      margin: CustomPadding.horDefault,
      padding: CustomPadding.verHor(8, 6),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: CustomBorderRadius.r100,
        color: CustomColors.brand.withOpacity(0.3),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (String item in viewItems) TopBarSelectionItem(text: item),
            ],
          ),
        ],
      ),
    );
  }
}
