import 'package:flutter/cupertino.dart';
import 'package:fred_app/features/explore/detail/screens/widgets/review/kpi/explore_detail_review_kpi_comments.dart';
import 'package:fred_app/features/explore/detail/screens/widgets/review/kpi/explore_detail_review_kpi_rating.dart';
import 'package:fred_app/globals/constants/colors_fonts/colors.dart';
import 'package:fred_app/globals/constants/decoration/border_radius.dart';
import 'package:fred_app/globals/constants/marpad.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ExploreDetailReviewKPI extends ConsumerWidget {
  final String id;
  const ExploreDetailReviewKPI({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: CustomPadding.allDefault,
      padding: CustomPadding.verDefault,
      decoration: BoxDecoration(
        color: CustomColors.brand.withOpacity(0.5),
        borderRadius: CustomBorderRadius.rDefault,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ExploreDetailRatingKPIComments(id: id),
          ExploreDetailRatingKPIRating(id: id)
        ],
      ),
    );
  }
}
