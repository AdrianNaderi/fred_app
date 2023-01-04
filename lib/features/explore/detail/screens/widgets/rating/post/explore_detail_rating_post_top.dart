import 'package:flutter/cupertino.dart';
import 'package:fred_app/globals/constants/colors_fonts/colors.dart';
import 'package:fred_app/globals/constants/marpad.dart';
import 'package:fred_app/globals/widgets/icons/custom_icons.dart';
import 'package:fred_app/globals/widgets/spacer.dart';
import 'package:fred_app/globals/widgets/text/custom_bold_text.dart';
import 'package:fred_app/globals/widgets/text/custom_normal_text.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ExploreDetailRatingPostTop extends ConsumerWidget {
  const ExploreDetailRatingPostTop({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: CustomPadding.allDefault,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/icons/profile.png"),
              CustomSpacer.wDefault,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CustomNormalText(text: "Robin", size: 16),
                    CustomNormalText(text: "2 dagar sedan", size: 10),
                  ],
                ),
              ),
              const CustomBoldText(text: "4.8", size: 16),
              const CustomIcon(
                icon: CupertinoIcons.star_fill,
                color: CustomColors.brand,
              )
            ],
          ),
        ],
      ),
    );
  }
}
