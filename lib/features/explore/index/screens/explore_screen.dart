import 'package:flutter/cupertino.dart';
import 'package:fred_app/features/explore/index/screens/widgets/explore_filter_list/explore_filter_list_builder.dart';
import 'package:fred_app/features/explore/index/screens/widgets/explore_filter_list/explore_filter_list_title.dart';
import 'package:fred_app/globals/top_bar/app_top_bar.dart';
import 'package:fred_app/route/named_routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'widgets/explore_view_list/explore_view_list_builder.dart';

class ExploreScreen extends ConsumerWidget {
  static const String routeName = NamedRoutes.toExplore;
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoPageScaffold(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          AppTopBar(),
          ExploreFilterListTitle(),
          ExploreFilterListBuilder(),
          ExploreViewListBuilder(),
        ],
      ),
    );
  }
}
