import 'package:flutter/cupertino.dart';
import 'package:fred_app/cms/cms_favorite.dart';
import 'package:fred_app/features/favorites/controllers/favorites_filter_controller.dart';
import 'package:fred_app/features/favorites/controllers/favorites_view_selection_controller.dart';
import 'package:fred_app/globals/constants/marpad.dart';
import 'package:fred_app/globals/models/filter.dart';
import 'package:fred_app/globals/widgets/spacer.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'favorites_filter_list_item.dart';

class FavoriteFilterListBuilder extends ConsumerWidget {
  const FavoriteFilterListBuilder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedView =
        ref.watch(favoritesViewSelectionController).getSelectedViewName();

    List<Filter> tags = selectedView == CMSFavorite.firstTab
        ? ref.watch(favoritesFilterController).firstTabFilters
        : ref.watch(favoritesFilterController).secondTabFilters;

    return SizedBox(
      height: 30,
      child: ListView.separated(
        padding: CustomPadding.leftDefault,
        scrollDirection: Axis.horizontal,
        itemCount: tags.length,
        separatorBuilder: (context, index) => CustomSpacer.w8,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => ref
              .read(favoritesFilterController)
              .setFilterState(tags[index], selectedView),
          child: FavoriteFilterListItem(
            tag: tags[index],
          ),
        ),
      ),
    );
  }
}
