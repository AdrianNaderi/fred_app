import 'package:flutter/cupertino.dart';
import 'package:fred_app/features/favorites/screens/widgets/favorites_filter_list/favorites_filter_list_builder.dart';
import 'package:fred_app/features/favorites/screens/widgets/favorites_filter_list/favorites_filter_list_title.dart';
import 'package:fred_app/features/favorites/screens/widgets/favorites_view_list/favorites_view_list_builder.dart';
import 'package:fred_app/globals/top_bar/app_top_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'widgets/favorites_view_selection/view_selection.dart';

class FavoritesScreen extends ConsumerWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoPageScaffold(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        AppTopBar(),
        FavoritesViewSelection(),
        FavoriteFilterListTitle(),
        FavoriteFilterListBuilder(),
        FavoritesViewListBuilder(),
      ],
    ));
  }
}
