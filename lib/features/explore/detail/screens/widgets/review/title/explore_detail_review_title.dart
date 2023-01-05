import 'package:flutter/cupertino.dart';
import 'package:fred_app/globals/constants/marpad.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../globals/widgets/text/custom_normal_text.dart';

class ExploreDetailReviewTitle extends ConsumerWidget {
  const ExploreDetailReviewTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: CustomPadding.verDefault,
      padding: CustomPadding.horDefault,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomNormalText(
              text: "Se vad dina vänner har sagt om platsen", size: 24),
        ],
      ),
    );
  }
}
