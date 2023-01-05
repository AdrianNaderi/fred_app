import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'explore_detail_favorite_button.dart';
import 'explore_detail_visit_button.dart';

class ExploreDetailButtons extends ConsumerWidget {
  final String id;
  const ExploreDetailButtons({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ExploreDetailVisitButton(id: id),
        ExploreDetailFavoriteButton(id: id),
      ],
    );
  }
}
