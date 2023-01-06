import 'package:flutter/cupertino.dart';
import 'package:fred_app/features/explore/detail/controllers/explore_detail_review_controller.dart';
import 'package:fred_app/globals/widgets/icons/custom_icons.dart';
import 'package:fred_app/globals/widgets/spacer.dart';
import 'package:fred_app/globals/widgets/text/custom_bold_text.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ExploreDetailRatingKPIRating extends ConsumerWidget {
  final String id;
  const ExploreDetailRatingKPIRating({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String rating = ref
        .read(exploreDetailReviewController)
        .getAvgRatingforSpot(id)
        .toStringAsFixed(1);
    return Row(
      children: [
        CustomBoldText(text: rating, size: 16),
        CustomSpacer.w8,
        const CustomIcon(icon: CupertinoIcons.star_fill)
      ],
    );
  }
}
