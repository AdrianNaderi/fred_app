import 'package:flutter/cupertino.dart';
import 'package:fred_app/globals/constants/colors_fonts/colors.dart';
import 'package:fred_app/globals/constants/decoration/border_radius.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ExploreViewListItemIcon extends ConsumerWidget {
  final String id;
  const ExploreViewListItemIcon({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 47,
      width: 47,
      decoration: BoxDecoration(
          borderRadius: CustomBorderRadius.r100, color: CustomColors.primary),
    );
  }
}
