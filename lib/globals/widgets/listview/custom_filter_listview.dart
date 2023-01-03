import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants/marpad.dart';

class CustomFilterListviewSeperator extends ConsumerWidget {
  final double height;
  final int itemCount;
  final Axis scrollDirection;
  final ScrollPhysics? physics;
  final Widget Function(BuildContext, int) itemBuilder;
  final Widget Function(BuildContext, int) seperatorBuilder;
  const CustomFilterListviewSeperator({
    super.key,
    required this.height,
    required this.scrollDirection,
    this.physics,
    required this.seperatorBuilder,
    required this.itemCount,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: height,
          child: ListView.separated(
            clipBehavior: Clip.none,
            physics: physics,
            scrollDirection: scrollDirection,
            padding: CustomPadding.leftDefault,
            separatorBuilder: seperatorBuilder,
            itemCount: itemCount,
            itemBuilder: itemBuilder,
          ),
        ),
      ],
    );
  }
}
