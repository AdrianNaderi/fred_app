import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final exploreTabsController =
    ChangeNotifierProvider<ExploreTabsController>((ref) {
  return ExploreTabsController();
});

class ExploreTabsController extends ChangeNotifier {
  int selectedTab = 0;

  void updateSelectedTab(int index) {
    selectedTab = index;
    notifyListeners();
  }

  // int getSelectedTab() {}
}
