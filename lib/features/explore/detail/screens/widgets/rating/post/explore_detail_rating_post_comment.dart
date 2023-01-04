import 'package:flutter/cupertino.dart';
import 'package:fred_app/globals/constants/colors_fonts/colors.dart';
import 'package:fred_app/globals/constants/marpad.dart';
import 'package:fred_app/globals/widgets/text/custom_normal_text.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ExploreDetailRatingPostComment extends ConsumerWidget {
  const ExploreDetailRatingPostComment({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      alignment: Alignment.topLeft,
      padding: CustomPadding.horDefault,
      child: const CustomNormalText(
        text:
            "“Supertrevlig personal med mysig inredning. Maten tog lite tid att få dock.”",
        size: 12,
        color: CustomColors.greyText,
      ),
    );
  }
}
