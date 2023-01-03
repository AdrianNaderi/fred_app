import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userFavoritesProvider = ChangeNotifierProvider<UserFavoritesProvider>(
  (ref) => UserFavoritesProvider(),
);

class UserFavoritesProvider extends ChangeNotifier {
  Map<String, List<String>> userFavorites = {
    "Robin": ["001", "002"],
  };

  

  List<String> getAllUserFavorites({required String userId}) {
    return userFavorites.entries
        .firstWhere((element) => element.key == userId)
        .value;
  }

  bool getSingleUserFavorite(
      {required String userId, required String exploreId}) {
    return userFavorites.entries
        .firstWhere((element) => element.key == userId)
        .value
        .contains(exploreId);
  }

  void updateUserFavorite({required String userId, required String exploreId}) {
    List<String> favorites = userFavorites.entries
        .firstWhere((element) => element.key == userId)
        .value;

    favorites.contains(exploreId)
        ? favorites.remove(exploreId)
        : favorites.add(exploreId);
    notifyListeners();
  }
}
