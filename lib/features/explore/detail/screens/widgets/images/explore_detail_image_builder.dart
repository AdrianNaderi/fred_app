import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../globals/constants/marpad.dart';
import '../../../../../../globals/widgets/spacer.dart';
import 'explore_detail_image.dart';

class ExploreDetailImages extends ConsumerWidget {
  final String id;
  const ExploreDetailImages({
    super.key,
    required this.id,
  });

  static const double imageHeight = 245;
  static const double imageWidth = 312;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: imageHeight, //styr höjd
      child: ListView.separated(
        padding: CustomPadding.leftDefault,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => CustomSpacer.w8,
        itemCount: 3,
        itemBuilder: (context, index) => const ExploreDetailImage(
          width: imageWidth,
        ),
      ),
    );
  }
}
