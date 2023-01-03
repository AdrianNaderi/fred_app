import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final favoritesViewSelectionController =
    ChangeNotifierProvider<FavoritesViewSelectionController>(
  (ref) => FavoritesViewSelectionController(),
);

class FavoritesViewSelectionController extends ChangeNotifier {
  final Map<String, Widget> viewWidgets = {
    "Ej besökta": const SizedBox(),
    "Besökta": const SizedBox(),
  };

  Map<String, bool> viewState = {
    "Ej besökta": true,
    "Besökta": false,
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
