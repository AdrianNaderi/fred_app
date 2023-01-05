import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants/marpad.dart';
import '../text/custom_bold_text.dart';

class CustomCardListviewSeperator extends ConsumerWidget {
  final String title;
  final double height;
  final int itemCount;
  final Axis scrollDirection;
  final ScrollPhysics? physics;
  final Widget Function(BuildContext, int) itemBuilder;
  final Widget Function(BuildContext, int) seperatorBuilder;
  const CustomCardListviewSeperator({
    super.key,
    required this.title,
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
        //cardbuilder title
        Padding(
          padding: CustomPadding.verHor(8, 16),
          child: CustomBoldText(text: title, size: 16),
        ),
        SizedBox(
          height: height,
          child: ListView.separated(
            clipBehavior: Clip.none,
            physics: physics,
            scrollDirection: scrollDirection,
            padding: scrollDirection == Axis.vertical
                ? CustomPadding.horDefault
                : CustomPadding.leftDefault,
            separatorBuilder: seperatorBuilder,
            itemCount: itemCount,
            itemBuilder: itemBuilder,
          ),
        ),
      ],
    );
  }
}
