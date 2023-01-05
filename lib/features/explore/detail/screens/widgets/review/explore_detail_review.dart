import 'package:flutter/cupertino.dart';
import 'package:fred_app/features/explore/detail/controllers/explore_detail_review_controller.dart';
import 'package:fred_app/features/explore/detail/screens/widgets/review/no_review/explore_detail_review_null.dart';
import 'package:fred_app/features/explore/detail/screens/widgets/review/post/explore_detail_review_post_builder.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'kpi/explore_detail_review_kpi.dart';
import 'title/explore_detail_review_title.dart';

class ExploreDetailReview extends ConsumerWidget {
  final String id;
  const ExploreDetailReview({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool hasReview = ref
        .read(exploreDetailReviewController)
        .getReviewsforSpot(id)
        .isNotEmpty;

    return hasReview
        ? Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ExploreDetailReviewTitle(),
              ExploreDetailReviewKPI(id: id),
              ExploreDetailReviewPostBuilder(id: id),
            ],
          )
        : const ExploreDetailReviewNull();
  }
}
