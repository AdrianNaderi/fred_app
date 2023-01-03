import 'package:flutter/cupertino.dart';
import 'package:fred_app/features/explore/detail/screens/widgets/tags/exploreDetailTag.dart';
import 'package:fred_app/features/explore/index/controllers/explore_data_controller.dart';
import 'package:fred_app/globals/constants/dimensions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ExploreDetailTagBuilder extends ConsumerWidget {
  final String id;
  const ExploreDetailTagBuilder({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exploreTags = ref.read(exploreDataController).getSpotById(id).tags;
    return Wrap(
      spacing: appPadding / 2,
      runSpacing: appPadding / 2,
      children: [
        for (int i = 0; i < exploreTags.length; i++)
          ExploreDetailTag(
            tag: exploreTags[i],
          ),
      ],
    );
  }
}


// Flexible(
//       child: ListView.separated(
//         scrollDirection: Axis.horizontal,
//         shrinkWrap: true,
//         separatorBuilder: (context, index) => CustomSpacer.w8,
//         itemBuilder: (context, index) => const ExploreDetailTag(),
//         itemCount: 10,
//       ),
//     )