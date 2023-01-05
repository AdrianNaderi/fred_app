import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../../globals/constants/colors_fonts/colors.dart';
import '../../../../../../../../globals/models/rating.dart';
import '../../../../../../../../globals/widgets/text/custom_normal_text.dart';

class UserReviewComment extends ConsumerWidget {
  final Review review;
  const UserReviewComment({
    super.key,
    required this.review,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Align(
      alignment: Alignment.topLeft,
      child: CustomNormalText(
        text: review.comment,
        size: 12,
        color: CustomColors.greyText,
      ),
    );
  }
}
