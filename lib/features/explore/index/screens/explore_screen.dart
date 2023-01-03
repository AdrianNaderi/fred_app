import 'package:flutter/cupertino.dart';
import 'package:fred_app/features/explore/index/screens/widgets/explore_filter_list/explore_filter_list_builder.dart';
import 'package:fred_app/features/explore/index/screens/widgets/explore_filter_list/explore_filter_list_title.dart';
import 'package:fred_app/globals/top_bar/custom_top_bar.dart';
import 'package:fred_app/route/named_routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'widgets/explore_view_list/explore_view_list_builder.dart';

class MVPExploreScreen extends ConsumerWidget {
  static const String routeName = NamedRoutes.toExplore;
  const MVPExploreScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoPageScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomTopBar(),
          ExploreFilterListTitle(),
          ExploreFilterListBuilder(),
          ExploreViewListBuilder(),
        ],
      ),
    );
  }
}
