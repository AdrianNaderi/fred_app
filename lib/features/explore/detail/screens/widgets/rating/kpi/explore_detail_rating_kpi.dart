import 'package:flutter/cupertino.dart';
import 'package:fred_app/globals/constants/colors_fonts/colors.dart';
import 'package:fred_app/globals/constants/decoration/border_radius.dart';
import 'package:fred_app/globals/constants/marpad.dart';
import 'package:fred_app/globals/widgets/text/custom_bold_text.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ExploreDetailRatingKPI extends ConsumerWidget {
  const ExploreDetailRatingKPI({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: CustomPadding.allDefault,
      padding: CustomPadding.verDefault,
      decoration: BoxDecoration(
        color: CustomColors.brand.withOpacity(0.5),
        borderRadius: CustomBorderRadius.rDefault,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          CustomBoldText(text: "10 kommentarer", size: 12),
          CustomBoldText(text: "Vänner 4.6", size: 12),
        ],
      ),
    );
  }
}
