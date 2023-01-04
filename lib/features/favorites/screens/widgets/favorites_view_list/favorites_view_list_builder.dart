import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:fred_app/features/explore/index/screens/widgets/explore_view_list/explore_view_list_Item.dart';
import 'package:fred_app/features/explore/models/explore.dart';
import 'package:fred_app/features/favorites/controllers/favorites_filter_controller.dart';
import 'package:fred_app/globals/constants/marpad.dart';
import 'package:fred_app/globals/widgets/spacer.dart';
import 'package:fred_app/route/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../cms/cms_favorite.dart';
import '../../../controllers/favorites_view_selection_controller.dart';

class FavoritesViewListBuilder extends ConsumerWidget {
  const FavoritesViewListBuilder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //user favorite spots

    List<Spot> spots = ref
            .watch(favoritesViewSelectionController)
            .viewState[CMSFavorite.firstTab]!
        ? ref.watch(favoritesFilterController).firstTabSpotsFiltered
        : ref.watch(favoritesFilterController).secondTabSpotsFiltered;

    return Expanded(
      child: ListView.separated(
        padding: CustomPadding.allDefault,
        scrollDirection: Axis.vertical,
        separatorBuilder: (context, index) => CustomSpacer.h8,
        itemCount: spots.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => context.pushRoute(
            ExploreDetailRoute(id: spots[index].id),
          ),
          child: ExploreViewListItem(id: spots[index].id),
        ),
      ),
    );
  }
}
