import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../../globals/models/review.dart';
import '../../../../../../../../globals/models/user.dart';
import '../../../../../../../../globals/widgets/format/date_converter.dart';
import '../../../../../../../../globals/widgets/text/custom_normal_text.dart';

class UserNameandReviewDate extends ConsumerWidget {
  final User user;
  final Review review;
  const UserNameandReviewDate({
    super.key,
    required this.user,
    required this.review,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomNormalText(text: user.name, size: 16),
          CustomNormalText(
              text: DateConverter.dMMMYYYY(review.createdDate), size: 10),
        ],
      ),
    );
  }
}
