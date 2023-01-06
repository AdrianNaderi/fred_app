import 'package:flutter/cupertino.dart';
import 'package:fred_app/globals/constants/colors_fonts/colors.dart';
import 'package:fred_app/globals/constants/decoration/border_radius.dart';
import 'package:fred_app/globals/constants/dimensions.dart';
import 'package:fred_app/globals/constants/marpad.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../globals/widgets/text/custom_normal_text.dart';

class ExploreDetailTag extends ConsumerWidget {
  final String tag;
  const ExploreDetailTag({
    super.key,
    required this.tag,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: CustomPadding.verHor(appPadding / 4, appPadding / 2),
      decoration: BoxDecoration(
        color: CustomColors.brand,
        borderRadius: CustomBorderRadius.rDefault,
      ),
      child: CustomNormalText(text: "#$tag", size: 14),
    );
  }
}
