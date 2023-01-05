import 'package:flutter/cupertino.dart';
import 'package:fred_app/globals/constants/marpad.dart';
import 'package:fred_app/globals/widgets/text/custom_normal_text.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ExploreDetailReviewNull extends ConsumerWidget {
  const ExploreDetailReviewNull({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      alignment: Alignment.center,
      padding: CustomPadding.allDefault,
      child: Column(
        children: const [
          CustomNormalText(
            text: "Just nu har inga av dina vänner betygsatt platsen",
            size: 12,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
