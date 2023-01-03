import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../constants/colors_fonts/colors.dart';
import '../constants/marpad.dart';
import 'add_functionality/app_name/custom_top_bar_name.dart';
import 'add_functionality/custom_top_bar_icon.dart';

class CustomTopBar extends ConsumerWidget {
  const CustomTopBar({super.key});

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
        children: const [
          CustomTopBarName(),
          CustomNavBarTrailing(),
        ],
      ),
    );
  }
}
