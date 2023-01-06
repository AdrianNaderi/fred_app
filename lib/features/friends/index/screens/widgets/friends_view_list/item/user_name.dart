import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../../globals/models/user.dart';
import '../../../../../../../../globals/widgets/text/custom_normal_text.dart';

class UserName extends ConsumerWidget {
  final User user;

  const UserName({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: CustomNormalText(text: user.name, size: 14),
    );
  }
}
