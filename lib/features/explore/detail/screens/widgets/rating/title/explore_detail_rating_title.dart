import 'package:flutter/cupertino.dart';
import 'package:fred_app/globals/constants/marpad.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../globals/widgets/spacer.dart';
import '../../../../../../../globals/widgets/text/custom_bold_text.dart';
import '../../../../../../../globals/widgets/text/custom_normal_text.dart';

class ExploreDetailRatingTitle extends ConsumerWidget {
  const ExploreDetailRatingTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: CustomPadding.horDefault,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomBoldText(text: "Betyg", size: 32),
          CustomSpacer.hDefault,
          const CustomNormalText(
              text: "Se vad dina vänner har sagt om platsen", size: 14),
        ],
      ),
    );
  }
}
