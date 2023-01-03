import 'package:flutter/cupertino.dart';
import 'package:fred_app/data/user/user_filter_provider.dart';
import 'package:fred_app/globals/constants/marpad.dart';
import 'package:fred_app/globals/widgets/spacer.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'favorites_filter_list_item.dart';

class FavoriteFilterListBuilder extends ConsumerWidget {
  const FavoriteFilterListBuilder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tags = ref.watch(userFilterProvider).getUserFavoriteFilters();

    return SizedBox(
      height: 30,
      child: ListView.separated(
        padding: CustomPadding.leftDefault,
        scrollDirection: Axis.horizontal,
        itemCount: tags.length,
        separatorBuilder: (context, index) => CustomSpacer.w8,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            return ref
                .read(userFilterProvider)
                .setFilter(tags.elementAt(index));
          },
          child: FavoriteFilterListItem(
            tag: tags.elementAt(index),
          ),
        ),
      ),
    );
  }
}
