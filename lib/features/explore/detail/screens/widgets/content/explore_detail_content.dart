import 'package:flutter/cupertino.dart';
import 'package:fred_app/features/explore/index/controllers/explore_data_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../globals/widgets/spacer.dart';
import '../../../../../../globals/widgets/text/custom_boldtext.dart';
import '../../../../../../globals/widgets/text/custom_normaltext.dart';

class MVPExploreDetailContent extends ConsumerWidget {
  final String id;
  const MVPExploreDetailContent({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final explore = ref.read(exploreDataController).getSpotById(id);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomBoldText(text: explore.title, size: 32),
        CustomSpacer.hDefault,
        CustomNormalText(text: explore.description, size: 14),
      ],
    );
  }
}