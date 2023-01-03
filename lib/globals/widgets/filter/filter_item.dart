import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants/colors_fonts/colors.dart';
import '../../constants/decoration/border_radius.dart';
import '../../constants/marpad.dart';
import '../../models/filter.dart';
import '../text/custom_filter_body.dart';

class FilterItem extends ConsumerWidget {
  final Filter filter;
  const FilterItem({super.key, required this.filter});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      alignment: Alignment.center,
      padding: CustomPadding.verHor(0, 16),
      decoration: BoxDecoration(
        color: filter.filter ? CustomColors.brand : null,
        border:
            filter.filter ? null : Border.all(strokeAlign: StrokeAlign.inside),
        borderRadius: CustomBorderRadius.rDefault,
      ),
      child: CustomFilterBody(text: filter.name),
    );
  }
}
