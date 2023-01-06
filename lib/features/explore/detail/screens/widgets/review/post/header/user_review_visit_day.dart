import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../../globals/constants/colors_fonts/colors.dart';
import '../../../../../../../../globals/constants/decoration/border_radius.dart';
import '../../../../../../../../globals/constants/marpad.dart';
import '../../../../../../../../globals/models/review.dart';
import '../../../../../../../../globals/widgets/format/date_converter.dart';
import '../../../../../../../../globals/widgets/text/custom_normal_text.dart';

class UserReviewVisitDay extends ConsumerWidget {
  final Review review;
  const UserReviewVisitDay({
    super.key,
    required this.review,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: CustomPadding.verHorButton,
      decoration: BoxDecoration(
        color: CustomColors.brand,
        borderRadius: CustomBorderRadius.rDefault,
      ),
      child: CustomNormalText(
        text:
            "Besökte en ${DateConverter.weekDayFromWeekDayNum(review.visitedWeekDay)}",
        size: 10,
      ),
    );
  }
}
