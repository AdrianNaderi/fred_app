import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:fred_app/features/explore/index/screens/widgets/explore_view_list/explore_view_list_Item.dart';
import 'package:fred_app/features/favorites/controllers/favorites_data_controller.dart';
import 'package:fred_app/features/favorites/controllers/favorites_view_selection_controller.dart';
import 'package:fred_app/globals/constants/marpad.dart';
import 'package:fred_app/globals/widgets/spacer.dart';
import 'package:fred_app/route/app_router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FavoritesViewListBuilder extends ConsumerWidget {
  const FavoritesViewListBuilder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //user favorite spots
    final viewData = ref.watch(favoritesDataController).getFavoritesData(
          visitedViewState: ref
              .watch(favoritesViewSelectionController)
              .viewState
              .entries
              .firstWhere(
                (element) => element.value == true,
              )
              .key,
        );
    return Expanded(
      child: ListView.separated(
        padding: CustomPadding.allDefault,
        scrollDirection: Axis.vertical,
        separatorBuilder: (context, index) => CustomSpacer.h8,
        itemCount: viewData.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => context.pushRoute(
            MVPExploreDetailRoute(id: viewData[index].id),
          ),
          child: ExploreViewListItem(id: viewData[index].id),
        ),
      ),
    );
  }
}
