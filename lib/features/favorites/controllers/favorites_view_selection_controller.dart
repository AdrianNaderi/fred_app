import 'package:flutter/cupertino.dart';
import 'package:fred_app/cms/cms_favorite.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final favoritesViewSelectionController =
    ChangeNotifierProvider<FavoritesViewSelectionController>(
  (ref) => FavoritesViewSelectionController(),
);

class FavoritesViewSelectionController extends ChangeNotifier {
  final Map<String, Widget> viewWidgets = {
    CMSFavorite.firstTab: const SizedBox(),
    CMSFavorite.secondTab: const SizedBox(),
  };

  Map<String, bool> viewState = {
    CMSFavorite.firstTab: true,
    CMSFavorite.secondTab: false,
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
