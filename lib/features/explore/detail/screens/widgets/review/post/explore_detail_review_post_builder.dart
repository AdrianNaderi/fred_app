import 'package:flutter/cupertino.dart';
import 'package:fred_app/features/explore/detail/screens/widgets/review/post/explore_detail_review_post.dart';
import 'package:fred_app/globals/constants/marpad.dart';
import 'package:fred_app/globals/widgets/spacer.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../controllers/explore_detail_review_controller.dart';

class ExploreDetailReviewPostBuilder extends ConsumerWidget {
  final String id;
  const ExploreDetailReviewPostBuilder({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ratings =
        ref.read(exploreDetailReviewController).getReviewsforSpot(id);
    return Flexible(
      fit: FlexFit.loose,
      child: ListView.separated(
        shrinkWrap: true,
        padding: CustomPadding.noPadding,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => CustomSpacer.hDefault,
        itemCount: ratings.length,
        itemBuilder: (context, index) => ExploreDetailReviewPost(
          id: id,
          review: ratings[index],
        ),
      ),
    );
  }
}
