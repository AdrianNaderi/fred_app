import 'package:flutter/cupertino.dart';
import 'package:fred_app/features/explore/detail/screens/widgets/review/post/header/user_name_and_review_date.dart';
import 'package:fred_app/features/explore/detail/screens/widgets/review/post/header/user_profile_icon.dart';
import 'package:fred_app/features/explore/detail/screens/widgets/review/post/header/user_review_rating.dart';
import 'package:fred_app/features/explore/detail/screens/widgets/review/post/header/user_review_visit_day.dart';
import 'package:fred_app/globals/constants/marpad.dart';
import 'package:fred_app/globals/widgets/spacer.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../globals/models/review.dart';
import '../../../../../../../globals/models/user.dart';
import '../../../../controllers/explore_detail_review_controller.dart';
import 'body/user_review_comment.dart';

class ExploreDetailReviewPost extends ConsumerWidget {
  final String id;
  final Review review;
  const ExploreDetailReviewPost({
    super.key,
    required this.id,
    required this.review,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final User user = ref
        .read(exploreDetailReviewController)
        .getUserforComment(review.userId);
    return Container(
      padding: CustomPadding.allDefault,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              UserProfileIcon(user: user),
              CustomSpacer.wDefault,
              UserNameandReviewDate(user: user, review: review),
              CustomSpacer.wDefault,
              UserReviewVisitDay(review: review),
              CustomSpacer.wDefault,
              UserReviewRating(review: review),
            ],
          ),
          CustomSpacer.hDefault,
          UserReviewComment(review: review)
        ],
      ),
    );
  }
}
