import 'package:flutter/cupertino.dart';
import 'package:fred_app/features/friends/index/controllers/friends_data_controller.dart';
import 'package:fred_app/features/friends/index/screens/widgets/friends_view_list/friends_view_list_builder.dart';
import 'package:fred_app/features/friends/index/screens/widgets/view_selection/view_selection.dart';
import 'package:fred_app/globals/top_bar/app_top_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FriendsScreen extends ConsumerWidget {
  const FriendsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userFriends = ref.read(friendsDataController).userFriends;
    return CupertinoPageScaffold(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppTopBar(),
        const FriendsViewSelection(),
        FriendsViewListBuilder(user: userFriends)
      ],
    ));
  }
}
