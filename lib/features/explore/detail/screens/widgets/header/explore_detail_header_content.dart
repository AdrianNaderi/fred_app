import 'package:flutter/cupertino.dart';
import 'package:fred_app/features/explore/index/controllers/explore_data_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../globals/constants/colors_fonts/colors.dart';
import '../../../../../../globals/widgets/text/custom_bold_text.dart';
import '../../../../../../globals/widgets/text/custom_normal_text.dart';

class ExploreDetailHeaderContent extends ConsumerWidget {
  final String id;
  const ExploreDetailHeaderContent({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final spot = ref.read(exploreDataController).getSpotById(id);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomBoldText(
          text: spot.name,
          size: 32,
          color: CustomColors.secondary,
        ),
        CustomNormalText(
            text: spot.location.address, size: 14, color: CustomColors.secondary),
        CustomNormalText(
            text: spot.location.area, size: 14, color: CustomColors.secondary)
      ],
    );
  }
}
