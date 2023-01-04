import 'package:flutter/cupertino.dart';
import 'package:fred_app/features/explore/index/controllers/explore_filter_controller.dart';
import 'package:fred_app/features/explore/index/screens/widgets/explore_filter_list/explore_filter_list_item.dart';
import 'package:fred_app/globals/constants/marpad.dart';
import 'package:fred_app/globals/widgets/spacer.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ExploreFilterListBuilder extends ConsumerWidget {
  const ExploreFilterListBuilder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tags = ref.watch(exploreFilterController).allFilters;
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
                .read(exploreFilterController)
                .setFilterState(tags.elementAt(index));
          },
          child: ExploreFilterListItem(
            tag: tags.elementAt(index),
          ),
        ),
      ),
    );
  }
}
