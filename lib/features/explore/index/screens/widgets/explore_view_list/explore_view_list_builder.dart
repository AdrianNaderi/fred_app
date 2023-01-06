import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:fred_app/features/explore/index/controllers/explore_filter_controller.dart';
import 'package:fred_app/features/explore/index/screens/widgets/explore_view_list/explore_view_list_Item.dart';
import 'package:fred_app/globals/constants/marpad.dart';
import 'package:fred_app/globals/widgets/spacer.dart';
import 'package:fred_app/route/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ExploreViewListBuilder extends ConsumerWidget {
  const ExploreViewListBuilder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filteredSpots = ref.watch(exploreFilterController).getFilteredSpots;
    return Flexible(
      fit: FlexFit.loose,
      child: ListView.separated(
        shrinkWrap: true,
        padding: CustomPadding.allDefault,
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => CustomSpacer.h8,
        itemCount: filteredSpots.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => context.pushRoute(
            ExploreDetailRoute(id: filteredSpots[index].id),
          ),
          child: ExploreViewListItem(id: filteredSpots[index].id),
        ),
      ),
    );
  }
}
