import 'package:flutter/material.dart';
import 'package:fred_app/data/spots/spots_provider.dart';
import 'package:fred_app/data/user/user_favorites_provider.dart';
import 'package:fred_app/data/user/user_visited_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../globals/models/spot.dart';

final favoritesDataController = Provider<FavoritesDataController>(
  (ref) => FavoritesDataController(
      allSpots: ref.read(spotsProvider).spots,
      userFavortiesSpots: ref
          .watch(userFavoritesProvider)
          .getUserFavoritesSpots(userId: "1"),
      userVisitedSpots:
          ref.watch(userVisitedProvider).getUserVisitedSpots(userId: "1")),
);

class FavoritesDataController extends ChangeNotifier {
  final List<Spot> allSpots;
  List<Spot> userFavortiesSpots;
  List<Spot> userVisitedSpots;
  FavoritesDataController(
      {required this.allSpots,
      required this.userFavortiesSpots,
      required this.userVisitedSpots});
}
