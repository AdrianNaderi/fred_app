import 'package:flutter/cupertino.dart';
import 'package:fred_app/features/friends/index/screens/widgets/friends_view_list/friends_view_list_item.dart';
import 'package:fred_app/globals/constants/marpad.dart';
import 'package:fred_app/globals/widgets/spacer.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../globals/models/user.dart';

class FriendsViewListBuilder extends ConsumerWidget {
  final List<User> user;
  const FriendsViewListBuilder({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: ListView.separated(
        padding: CustomPadding.allDefault,
        scrollDirection: Axis.vertical,
        separatorBuilder: (context, index) => CustomSpacer.h8,
        itemCount: user.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {},
          child: FriendsViewListItem(user: user[index]),
        ),
      ),
    );
  }
}
