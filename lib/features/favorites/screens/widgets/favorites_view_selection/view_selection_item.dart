import 'package:flutter/cupertino.dart';
import 'package:fred_app/globals/constants/marpad.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../../globals/constants/colors_fonts/colors.dart';
import '../../../../../../../../globals/constants/decoration/border_radius.dart';
import '../../../../../globals/widgets/text/custom_bold_text.dart';
import '../../../controllers/favorites_view_selection_controller.dart';

class TopBarSelectionItem extends ConsumerWidget {
  final String text;

  const TopBarSelectionItem({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemState =
        ref.watch(favoritesViewSelectionController).viewState[text]!;
    return GestureDetector(
      onTap: () => ref
          .read(favoritesViewSelectionController)
          .updateSelectedView(view: text),
      child: Container(
        alignment: Alignment.center,
        padding: CustomPadding.verHorButton,
        decoration: BoxDecoration(
          color: itemState ? CustomColors.brand : CustomColors.brand.withOpacity(0),
          borderRadius: CustomBorderRadius.rDefault,
        ),
        child: CustomBoldText(
          text: text,
          size: 14,
          textAlign: TextAlign.center,
          color: itemState
              ? CustomColors.primary
              : CustomColors.primary.withOpacity(0.5),
        ),
      ),
    );
  }
}
