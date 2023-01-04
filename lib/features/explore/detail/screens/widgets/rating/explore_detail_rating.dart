import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'kpi/explore_detail_rating_kpi.dart';
import 'post/explore_detail_rating_post.dart';
import 'title/explore_detail_rating_title.dart';

class ExploreDetailRating extends ConsumerWidget {
  const ExploreDetailRating({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        ExploreDetailRatingTitle(),
        ExploreDetailRatingKPI(),
        ExploreDetailRatingPost(),
      ],
    );
  }
}
