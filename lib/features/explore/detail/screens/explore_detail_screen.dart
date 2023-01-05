import 'package:flutter/cupertino.dart';
import 'package:fred_app/features/explore/detail/screens/widgets/buttons/explore_detail_buttons.dart';
import 'package:fred_app/features/explore/detail/screens/widgets/content/explore_detail_content.dart';
import 'package:fred_app/features/explore/detail/screens/widgets/review/explore_detail_review.dart';
import 'package:fred_app/features/explore/detail/screens/widgets/tags/exploreDetailTagBuilder.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../globals/constants/marpad.dart';
import '../../../../globals/widgets/spacer.dart';
import '../../../../route/named_routes.dart';
import 'widgets/header/explore_detail_header.dart';
import 'widgets/images/explore_detail_image_builder.dart';

class ExploreDetailScreen extends ConsumerWidget {
  static const String routeName = NamedRoutes.toExploreDetail;
  final String id;
  const ExploreDetailScreen({
    super.key,
    required this.id,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoPageScaffold(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //header
            ExploreDetailHeader(id: id),
            //body
            Padding(
              padding: CustomPadding.horDefault,
              child: Column(
                children: [
                  CustomSpacer.hDefault,
                  ExploreDetailButtons(id: id),
                  CustomSpacer.hDefault,
                  ExploreDetailContent(id: id),
                  CustomSpacer.hDefault,
                  ExploreDetailTagBuilder(id: id),
                  CustomSpacer.hDefault,
                ],
              ),
            ),
            //images
            ExploreDetailImages(id: id),
            CustomSpacer.hDefault,
            //rating
            ExploreDetailReview(id: id),
          ],
        ),
      ),
    );
  }
}
