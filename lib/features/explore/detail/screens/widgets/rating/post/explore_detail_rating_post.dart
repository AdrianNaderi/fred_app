import 'package:flutter/cupertino.dart';
import 'package:fred_app/features/explore/detail/screens/widgets/rating/post/explore_detail_rating_post_comment.dart';
import 'package:fred_app/features/explore/detail/screens/widgets/rating/post/explore_detail_rating_post_top.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ExploreDetailRatingPost extends ConsumerWidget {
  const ExploreDetailRatingPost({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: const [
        ExploreDetailRatingPostTop(),
        ExploreDetailRatingPostComment(),
      ],
    );
  }
}
