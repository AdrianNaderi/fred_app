import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../../globals/constants/colors_fonts/colors.dart';
import '../../../../../../../../globals/models/rating.dart';
import '../../../../../../../../globals/widgets/icons/custom_icons.dart';
import '../../../../../../../../globals/widgets/spacer.dart';
import '../../../../../../../../globals/widgets/text/custom_bold_text.dart';

class UserReviewRating extends ConsumerWidget {
  final Review review;
  const UserReviewRating({
    super.key,
    required this.review,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomBoldText(text: "${review.rating}", size: 16),
        CustomSpacer.w8,
        const CustomIcon(
          icon: CupertinoIcons.star_fill,
          color: CustomColors.brand,
        )
      ],
    );
  }
}
