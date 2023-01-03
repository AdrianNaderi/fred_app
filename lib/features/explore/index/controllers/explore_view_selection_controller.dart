import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final exploreViewSelectionController = ChangeNotifierProvider<ExploreViewSelectionController>(
  (ref) => ExploreViewSelectionController(),
);

class ExploreViewSelectionController extends ChangeNotifier {
  final Map<String, Widget> viewWidgets = {
    "Alla": const SizedBox(),
    "Resturanger": const SizedBox(),
    "Barer": const SizedBox(),
    "Annat": const SizedBox(),
  };

  Map<String, bool> viewState = {
    "Alla": true,
    "Resturanger": false,
    "Barer": false,
    "Annat": false,
  };

  void updateSelectedView({required String view}) {
    viewState.updateAll((key, value) => value = false);

    viewState[view] = !viewState[view]!;
    notifyListeners();
  }

  Widget getSelectedView() {
    MapEntry<String, bool> selectedView =
        viewState.entries.firstWhere((element) => element.value == true);
    return viewWidgets[selectedView.key]!;
  }
}
