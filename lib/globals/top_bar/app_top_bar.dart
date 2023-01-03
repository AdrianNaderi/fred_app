import 'package:flutter/material.dart';
import 'package:fred_app/globals/top_bar/add_spot/top_bar_add_spot.dart';
import 'package:fred_app/globals/widgets/spacer.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../constants/colors_fonts/colors.dart';
import '../constants/marpad.dart';
import 'add_functionality/top_bar_add_functionality.dart';
import 'app_name/custom_top_bar_name.dart';

class AppTopBar extends ConsumerWidget {
  const AppTopBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: CustomPadding.allDefault,
      height: 120,
      decoration: const BoxDecoration(
        color: CustomColors.secondary,
      ),
      child: Row(
        children: [
          const CustomTopBarName(),
          const AddSpotIcon(),
          CustomSpacer.w8,
          const AddFunctionalityIcon(),
        ],
      ),
    );
  }
}
