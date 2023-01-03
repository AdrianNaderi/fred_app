import 'package:flutter/cupertino.dart';
import 'package:fred_app/globals/constants/colors_fonts/colors.dart';
import 'package:fred_app/globals/constants/decoration/border_radius.dart';
import 'package:fred_app/globals/constants/marpad.dart';
import 'package:fred_app/globals/models/filter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../globals/widgets/text/custom_normaltext.dart';

class ExploreFilterListItem extends ConsumerWidget {
  final Filter tag;
  const ExploreFilterListItem({super.key, required this.tag});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      alignment: Alignment.center,
      padding: CustomPadding.verHor(6, 11),
      decoration: BoxDecoration(
        color: tag.filter ? CustomColors.brand : CustomColors.secondary,
        borderRadius: CustomBorderRadius.rDefault,
        border: Border.all(
          width: 1.5,
          color: tag.filter ? CustomColors.brand : CustomColors.primary,
          strokeAlign: StrokeAlign.inside,
        ),
      ),
      child: CustomNormalText(
        text: tag.name,
        size: 12,
      ),
    );
  }
}
