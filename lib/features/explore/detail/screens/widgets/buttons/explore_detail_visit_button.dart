import 'package:flutter/cupertino.dart';
import 'package:fred_app/data/user/user_visited_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../globals/constants/colors_fonts/colors.dart';
import 'explore_detail_custom_button.dart';

class ExploreDetailVisitButton extends ConsumerWidget {
  final String id;
  const ExploreDetailVisitButton({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasVisited = ref
        .watch(userVisitedProvider)
        .getSingleUserVisited(userId: "1", exploreId: id);

    return ExploreDetailButton(
      text: hasVisited ? "Har besökt" : "Ej besökt",
      textSize: 14,
      icon: hasVisited
          ? CupertinoIcons.check_mark_circled_solid
          : CupertinoIcons.check_mark_circled,
      iconSize: 23,
      iconColor: CustomColors.brand,
      onPressed: () => ref
          .read(userVisitedProvider)
          .setUserVisited(userId: "1", exploreId: id),
    );
  }
}
