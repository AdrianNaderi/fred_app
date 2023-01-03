import 'package:flutter/material.dart';
import 'package:fred_app/data/explore/explore_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../data/user/user_filter_provider.dart';
import '../../../globals/models/filter.dart';
import '../../explore/models/explore.dart';

final favoriteFilterController = ChangeNotifierProvider(
  (ref) => FavoriteFilterController(
      allSpots: ref.read(mvpexploreProvider).mvpSpots,
      userFilters: ref.read(userFilterProvider).favoriteTagFilters),
);

class FavoriteFilterController extends ChangeNotifier {
  final List<Spot> allSpots;
  List<Filter> userFilters;

  FavoriteFilterController({
    required this.allSpots,
    required this.userFilters,
  });

  //GETTERS
  List<Spot> get getFilteredSpots {
    List<Spot> filteredSpots = [];
    List<String> filterNames = userFilters
        .where((element) => element.filter == true)
        .toList()
        .map((e) => e.name)
        .toList();
    for (Spot spot in allSpots) {
      if (filterNames.isEmpty) {
        filteredSpots = allSpots;
      } else if (filterNames.any((element) => spot.tags.contains(element))) {
        filteredSpots.add(spot);
      }
    }
    return filteredSpots;
  }

  //SETTERS
  void setFilter(Filter filter) {
    userFilters.firstWhere((element) => element.name == filter.name).filter =
        !filter.filter;

    notifyListeners();
  }
}
