import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../globals/constants/decoration/border_radius.dart';

class ExploreDetailImage extends ConsumerWidget {
  final double width;
  const ExploreDetailImage({
    super.key,
    required this.width,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: CustomBorderRadius.rDefault,
        image: const DecorationImage(
          image: AssetImage("assets/spots/S-010.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
