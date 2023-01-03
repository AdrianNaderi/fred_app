import 'package:flutter/material.dart';
import 'package:fred_app/data/user/user_favorites_provider.dart';
import 'package:fred_app/data/user/user_visited_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../features/explore/models/explore.dart';
import '../../globals/models/filter.dart';
import '../explore/explore_spots_provider.dart';

final favoriteFilterProvider = ChangeNotifierProvider<FavoriteFilterProvider>(
  (ref) => FavoriteFilterProvider(
    allSpots: ref.read(spotsProvider).spots,
    userFavoriteSpots:
        ref.watch(userFavoritesProvider).getUserFavoritesSpots(userId: "Robin"),
    userVisitedSpots:
        ref.watch(userVisitedProvider).getUserVisitedSpots(userId: "Robin"),
    firstTabSpots: ref
        .watch(userFavoritesProvider)
        .getUserFavoritesSpots(userId: "Robin")
        .where((element) => !ref
            .watch(userVisitedProvider)
            .getUserVisitedSpots(userId: "Robin")
            .contains(element))
        .toList(),
    secondTabSpots: ref
        .watch(userFavoritesProvider)
        .getUserFavoritesSpots(userId: "Robin")
        .where((element) => ref
            .watch(userVisitedProvider)
            .getUserVisitedSpots(userId: "Robin")
            .contains(element))
        .toList(),
  ),
);

class FavoriteFilterProvider extends ChangeNotifier {
  final List<Spot> allSpots;
  List<Spot> userFavoriteSpots;
  List<Spot> userVisitedSpots;
  FavoriteFilterProvider({
    required this.allSpots,
    required this.userFavoriteSpots,
    required this.userVisitedSpots,
    required this.firstTabSpots,
    required this.secondTabSpots,
  });

  List<Spot> firstTabSpots;
  List<Spot> secondTabSpots;

  //TAB FILTERS
  List<Filter> get firstTabTagFilters => userFavoriteTagFilters
      .where((element) => !_visitedTagFilters.contains(element))
      .toList();
  List<Filter> get secondTabTagFilters => userFavoriteTagFilters
      .where((element) => _visitedTagFilters.contains(element))
      .toList();
  //LIST OF FILTERS
  List<Filter> get userFavoriteTagFilters => _favoriteTagFilters;
  List<Filter> get userVisitedTagFilters => _visitedTagFilters;

  //CREATE FILTER LISTS
  List<Filter> get _visitedTagFilters {
    Set<Filter> tags = {};
    for (Spot spot in userVisitedSpots) {
      for (String tag in spot.tags) {
        tags.add(Filter(
            name: tag[0].toUpperCase() + tag.substring(1), filter: false));
      }
    }

    List<Filter> list = tags.toList()
      ..sort(
        (a, b) => a.name.characters.first.compareTo(b.name.characters.first),
      );

    return list;
  }

  List<Filter> get _favoriteTagFilters {
    Set<Filter> tags = {};
    for (Spot spot in userFavoriteSpots) {
      for (String tag in spot.tags) {
        tags.add(Filter(
            name: tag[0].toUpperCase() + tag.substring(1), filter: false));
      }
    }

    List<Filter> list = tags.toList()
      ..sort(
        (a, b) => a.name.characters.first.compareTo(b.name.characters.first),
      );

    return list;
  }
}
