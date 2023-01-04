import 'package:flutter/cupertino.dart';
import 'package:fred_app/features/explore/index/controllers/explore_data_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../globals/widgets/spacer.dart';
import '../../../../../../globals/widgets/text/custom_bold_text.dart';
import '../../../../../../globals/widgets/text/custom_normal_text.dart';

class ExploreDetailContent extends ConsumerWidget {
  final String id;
  const ExploreDetailContent({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final spot = ref.read(exploreDataController).getSpotById(id);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomBoldText(text: spot.content.title, size: 32),
        CustomSpacer.hDefault,
        CustomNormalText(text: spot.content.description, size: 14),
      ],
    );
  }
}
