import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../globals/constants/decoration/border_radius.dart';

class MVPExploreDetailImage extends ConsumerWidget {
  final double width;
  const MVPExploreDetailImage({
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
          image: AssetImage("assets/images/occasions/first_date.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
