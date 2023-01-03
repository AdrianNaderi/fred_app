import 'package:flutter/cupertino.dart';
import 'package:fred_app/features/explore/detail/screens/widgets/buttons/explore_detail_buttons.dart';
import 'package:fred_app/features/explore/detail/screens/widgets/content/explore_detail_content.dart';
import 'package:fred_app/features/explore/detail/screens/widgets/tags/exploreDetailTagBuilder.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../globals/constants/marpad.dart';
import '../../../../globals/widgets/spacer.dart';
import '../../../../route/named_routes.dart';
import 'widgets/header/explore_detail_header.dart';
import 'widgets/images/explore_detail_image_builder.dart';

class MVPExploreDetailScreen extends ConsumerWidget {
  static const String routeName = NamedRoutes.toExploreDetail;
  final String id;
  const MVPExploreDetailScreen({
    super.key,
    required this.id,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoPageScaffold(
      child: SingleChildScrollView(
        child: Column(
          children: [
            //header
            MVPExploreDetailHeader(id: id),
            //body
            Padding(
              padding: CustomPadding.horDefault,
              child: Column(
                children: [
                  CustomSpacer.hDefault,
                  MVPExploreDetailButtons(id: id),
                  CustomSpacer.hDefault,
                  MVPExploreDetailContent(id: id),
                  CustomSpacer.hDefault,
                  MVPExploreDetailTagBuilder(id: id),
                  CustomSpacer.hDefault,
                ],
              ),
            ),
            MVPExploreDetailImages(id: id),
          ],
        ),
      ),
    );
  }
}
