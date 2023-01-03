import 'package:flutter/material.dart';
import 'package:fred_app/data/explore/explore_spots_provider.dart';
import 'package:fred_app/data/explore/explore_filter_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../globals/models/filter.dart';
import '../../models/explore.dart';

final exploreFilterController = ChangeNotifierProvider(
  (ref) => ExploreFilterController(
      allSpots: ref.read(spotsProvider).spots,
      allFilters: ref.read(filterProvider).listOfTagFilters),
);

class ExploreFilterController extends ChangeNotifier {
  final List<Spot> allSpots;
  List<Filter> allFilters;

  ExploreFilterController({required this.allSpots, required this.allFilters});

  //GETTERS
  List<Spot> get getFilteredSpots {
    List<Spot> filteredSpots = [];
    List<String> filterNames = allFilters
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
  void toggleFilter(Filter filter) {
    allFilters.firstWhere((element) => element.name == filter.name).filter =
        !filter.filter;

    notifyListeners();
  }
}
