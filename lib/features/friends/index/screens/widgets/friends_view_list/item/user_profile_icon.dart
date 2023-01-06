import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../../globals/models/user.dart';

class UserProfileIcon extends ConsumerWidget {
  final User user;
  const UserProfileIcon({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Image.asset(
      user.icon,
      scale: 1.2,
    );
  }
}
