import 'package:flutter/material.dart';
import 'package:fred_app/data/explore/explore_provider.dart';
import 'package:fred_app/data/user/user_favorites_provider.dart';
import 'package:fred_app/data/user/user_visited_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../explore/models/explore.dart';

final favoritesDataController = Provider<FavoritesDataController>(
  (ref) => FavoritesDataController(
      allSpots: ref.read(spotsProvider).spots,
      userFavortiesId:
          ref.watch(userFavoritesProvider).getAllUserFavorites(userId: "Robin"),
      userVisitedId:
          ref.watch(userVisitedProvider).getAllUserVisited(userId: "Robin")),
);

class FavoritesDataController extends ChangeNotifier {
  final List<Spot> allSpots;
  List<String> userFavortiesId;
  List<String> userVisitedId;
  FavoritesDataController(
      {required this.allSpots,
      required this.userFavortiesId,
      required this.userVisitedId});

  //user favorite spots
  List<Spot> get userFavoriteSpots => allSpots
      .where((element) => userFavortiesId.contains(element.id))
      .toList();
  //user favorites spots and visited state
  List<Spot> getFavoritesData({
    required String visitedViewState,
  }) {
    if (visitedViewState == "Besökta") {
      return userFavoriteSpots
          .where((element) => userVisitedId.contains(element.id))
          .toList();
    } else {
      return userFavoriteSpots
          .where((element) => !userVisitedId.contains(element.id))
          .toList();
    }
  }
}
