import 'package:flutter/cupertino.dart';
import 'package:fred_app/data/spots/spots_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../globals/widgets/text/custom_normal_text.dart';
import '../../../../../../../globals/models/spot.dart';

class ExploreViewListItemContent extends ConsumerWidget {
  final String id;
  const ExploreViewListItemContent({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Spot spot = ref.read(spotsProvider).spots.firstWhere(
          (element) => element.id == id,
        );
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomNormalText(text: spot.name, size: 18),
          CustomNormalText(text: "${spot.location.address} • ${spot.location.area}", size: 10),
        ],
      ),
    );
  }
}
