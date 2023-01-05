import 'package:flutter/material.dart';
import 'package:fred_app/data/spots/spots_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../globals/models/spot.dart';

final userFavoritesProvider = ChangeNotifierProvider<UserFavoritesProvider>(
  (ref) => UserFavoritesProvider(allSpots: ref.read(spotsProvider).spots),
);

class UserFavoritesProvider extends ChangeNotifier {
  final List<Spot> allSpots;

  UserFavoritesProvider({
    required this.allSpots,
  });

  Map<String, List<String>> userFavorites = {
    "Robin": ["1", "2"],
  };

//GETTERS------------------------------------------------------------------------------
//SPOTS-------------
  List<Spot> getUserFavoritesSpots({required String userId}) {
    return allSpots
        .where((element) => userFavorites.entries
            .firstWhere((element) => element.key == userId)
            .value
            .contains(element.id))
        .toList();
  }

  bool getUserFavoriteSpotState(
      {required String userId, required String exploreId}) {
    return userFavorites.entries
        .firstWhere((element) => element.key == userId)
        .value
        .contains(exploreId);
  }

  //SETTERS-----------
  void setUserFavoriteSpotState(
      {required String userId, required String exploreId}) {
    List<String> favorites = userFavorites.entries
        .firstWhere((element) => element.key == userId)
        .value;

    favorites.contains(exploreId)
        ? favorites.remove(exploreId)
        : favorites.add(exploreId);
    notifyListeners();
  }
}
