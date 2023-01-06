import 'package:flutter/cupertino.dart';
import 'package:fred_app/features/friends/index/screens/widgets/friends_view_list/item/user_KPI.dart';
import 'package:fred_app/features/friends/index/screens/widgets/friends_view_list/item/user_name.dart';
import 'package:fred_app/features/friends/index/screens/widgets/friends_view_list/item/user_profile_icon.dart';
import 'package:fred_app/globals/constants/marpad.dart';
import 'package:fred_app/globals/widgets/spacer.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../globals/models/user.dart';

class FriendsViewListItem extends ConsumerWidget {
  final User user;
  const FriendsViewListItem({super.key, required this.user});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: CustomPadding.horDefault,
      child: Row(
        children: [
          UserProfileIcon(user: user),
          CustomSpacer.wDefault,
          UserName(user: user),
          UserKPI(user: user)
        ],
      ),
    );
  }
}
