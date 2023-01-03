import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants/decoration/linear_gradient.dart';

class CustomImageOverlay extends ConsumerWidget {
  const CustomImageOverlay({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          gradient: CustomLinearGradient.boxBottom,
        ),
      ),
    );
  }
}
