import 'package:flutter/cupertino.dart';
import 'package:fred_app/cms/cms_friends.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final friendsViewSelectionController =
    ChangeNotifierProvider<FriendsViewSelectionController>(
  (ref) => FriendsViewSelectionController(),
);

class FriendsViewSelectionController extends ChangeNotifier {
  Map<String, bool> viewState = {
    CMSFriends.firstTab: true,
    CMSFriends.secondTab: false,
  };

  void updateSelectedView({required String view}) {
    viewState.updateAll((key, value) => value = false);

    viewState[view] = !viewState[view]!;
    notifyListeners();
  }

  String getSelectedViewName() {
    return viewState.entries.firstWhere((element) => element.value == true).key;
  }
}
