import 'package:flutter/cupertino.dart';
import 'package:fred_app/data/user/user_visited_provider.dart';
import 'package:fred_app/globals/constants/colors_fonts/colors.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../globals/widgets/icons/custom_icons.dart';

class ExploreViewListItemVisited extends ConsumerWidget {
  final String id;
  const ExploreViewListItemVisited({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasVisited = ref
        .watch(userVisitedProvider)
        .getSingleUserVisited(userId: "1", exploreId: id);
    return CustomIcon(
      icon: hasVisited
          ? CupertinoIcons.check_mark_circled_solid
          : CupertinoIcons.check_mark_circled,
      color: CustomColors.brand,
    );
  }
}
