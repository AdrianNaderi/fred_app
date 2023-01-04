import 'package:flutter/material.dart';
import 'package:fred_app/cms/cms_favorite.dart';
import 'package:fred_app/data/favorite/favorite_filter_provider.dart';
import 'package:fred_app/globals/models/filter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../globals/models/spot.dart';

final favoritesFilterController =
    ChangeNotifierProvider<FavoritesFilterController>(
  (ref) => FavoritesFilterController(
      firstTabSpots: ref.watch(favoriteFilterProvider).firstTabSpots,
      firstTabFilters: ref.watch(favoriteFilterProvider).firstTabTagFilters,
      secondTabSpots: ref.watch(favoriteFilterProvider).secondTabSpots,
      secondTabFilters: ref.watch(favoriteFilterProvider).secondTabTagFilters),
);

class FavoritesFilterController extends ChangeNotifier {
  List<Spot> firstTabSpots;
  List<Filter> firstTabFilters;
  List<Spot> secondTabSpots;
  List<Filter> secondTabFilters;
  FavoritesFilterController({
    required this.firstTabSpots,
    required this.firstTabFilters,
    required this.secondTabSpots,
    required this.secondTabFilters,
  });

  List<Spot> get firstTabSpotsFiltered {
    List<Spot> filteredSpots = [];
    List<String> filterNames = firstTabFilters
        .where((element) => element.filter == true)
        .toList()
        .map((e) => e.name)
        .toList();
    for (Spot spot in firstTabSpots) {
      if (filterNames.isEmpty) {
        filteredSpots = firstTabSpots;
      } else if (filterNames.any((element) => spot.content.tags.contains(element))) {
        filteredSpots.add(spot);
      }
    }
    return filteredSpots;
  }

  List<Spot> get secondTabSpotsFiltered {
    List<Spot> filteredSpots = [];
    List<String> filterNames = secondTabFilters
        .where((element) => element.filter == true)
        .toList()
        .map((e) => e.name)
        .toList();
    for (Spot spot in secondTabSpots) {
      if (filterNames.isEmpty) {
        filteredSpots = secondTabSpots;
      } else if (filterNames.any((element) => spot.content.tags.contains(element))) {
        filteredSpots.add(spot);
      }
    }
    return filteredSpots;
  }

  void setFilterState(Filter filter, String selectedView) {
    selectedView == CMSFavorite.firstTab
        ? firstTabFilters
            .firstWhere((element) => element.name == filter.name)
            .filter = !filter.filter
        : secondTabFilters
            .firstWhere((element) => element.name == filter.name)
            .filter = !filter.filter;
    notifyListeners();
  }
}
