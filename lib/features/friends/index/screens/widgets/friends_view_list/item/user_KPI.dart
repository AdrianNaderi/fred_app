import 'package:flutter/cupertino.dart';
import 'package:fred_app/features/friends/index/controllers/friends_data_controller.dart';
import 'package:fred_app/globals/models/user.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../../globals/constants/colors_fonts/colors.dart';
import '../../../../../../../../globals/widgets/icons/custom_icons.dart';
import '../../../../../../../../globals/widgets/spacer.dart';
import '../../../../../../../../globals/widgets/text/custom_bold_text.dart';

class UserKPI extends ConsumerWidget {
  final User user;
  const UserKPI({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAvgRating = ref
        .read(friendsDataController)
        .getAvgUserReviewRating(user.id)
        .toStringAsFixed(1);
    final userCountReviews = ref
        .read(friendsDataController)
        .getNumberofUserReviews(user.id)
        .toString();
    return
        //RATING
        Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomBoldText(
          text: userCountReviews,
          size: 16,
        ),
        CustomSpacer.w8,
        const CustomIcon(
          icon: CupertinoIcons.text_badge_star,
          color: CustomColors.brand,
        ),
        CustomSpacer.wDefault,
        CustomBoldText(
          text: userAvgRating,
          size: 16,
        ),
        CustomSpacer.w8,
        const CustomIcon(
          icon: CupertinoIcons.star_fill,
          color: CustomColors.brand,
        ),
      ],
    );
  }
}
