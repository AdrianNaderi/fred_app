import 'package:flutter/cupertino.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../data/explore/explore_provider.dart';
import '../../../../../../globals/constants/colors_fonts/colors.dart';
import '../../../../../../globals/constants/decoration/border_radius.dart';
import '../../../../../../globals/constants/dimensions.dart';
import '../../../../../../globals/constants/marpad.dart';
import '../../../../../../globals/widgets/spacer.dart';
import '../../../../models/explore.dart';
import 'explore_view_list_item/explore_view_list_item_content.dart';
import 'explore_view_list_item/explore_view_list_item_favorite.dart';
import 'explore_view_list_item/explore_view_list_item_icon.dart';
import 'explore_view_list_item/explore_view_list_item_visited.dart';

class ExploreViewListItem extends ConsumerWidget {
  final String id;
  const ExploreViewListItem({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Spot spot = ref.read(mvpexploreProvider).mvpSpots.firstWhere(
          (element) => element.id == id,
        );
    return Container(
      padding: CustomPadding.verHor(appPadding / 2, appPadding),
      decoration: BoxDecoration(
          borderRadius: CustomBorderRadius.rDefault,
          border: Border.all(color: CustomColors.grey)),
      child: Row(
        children: [
          ExploreViewListItemIcon(id: id),
          CustomSpacer.wDefault,
          ExploreViewListItemContent(id: id),
          ExploreViewListItemVisited(id: id),
          CustomSpacer.w8,
          ExploreViewListItemFavorite(id: id),
        ],
      ),
    );
  }
}
