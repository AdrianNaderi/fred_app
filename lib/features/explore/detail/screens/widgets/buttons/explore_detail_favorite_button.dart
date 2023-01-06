import 'package:flutter/cupertino.dart';
import 'package:fred_app/data/user/user_favorites_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../globals/constants/colors_fonts/colors.dart';
import 'explore_detail_custom_button.dart';

class ExploreDetailFavoriteButton extends ConsumerWidget {
  final String id;
  const ExploreDetailFavoriteButton({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFavorite = ref
        .watch(userFavoritesProvider)
        .getUserFavoriteSpotState(userId: "1", exploreId: id);

    return ExploreDetailButton(
      text: isFavorite ? "Tillagd i favoriter" : "Lägg till i favoriter",
      textSize: 14,
      icon: isFavorite ? CupertinoIcons.star_fill : CupertinoIcons.star,
      iconSize: 23,
      iconColor: CustomColors.brand,
      onPressed: () => ref
          .read(userFavoritesProvider)
          .setUserFavoriteSpotState(userId: "1", exploreId: id),
    );
  }
}
