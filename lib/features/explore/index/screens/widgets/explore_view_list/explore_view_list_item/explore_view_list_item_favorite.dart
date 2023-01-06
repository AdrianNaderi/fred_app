import 'package:flutter/cupertino.dart';
import 'package:fred_app/globals/constants/colors_fonts/colors.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../data/user/user_favorites_provider.dart';
import '../../../../../../../globals/widgets/icons/custom_icons.dart';

class ExploreViewListItemFavorite extends ConsumerWidget {
  final String id;
  const ExploreViewListItemFavorite({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFavorite = ref
        .watch(userFavoritesProvider)
        .getUserFavoriteSpotState(userId: "1", exploreId: id);
    return CustomIcon(
      icon: isFavorite ? CupertinoIcons.star_fill : CupertinoIcons.star,
      color: CustomColors.brand,
    );
  }
}
