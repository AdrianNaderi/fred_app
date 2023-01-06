import 'package:flutter/material.dart';
import 'package:fred_app/data/filter/explore_filter_provider.dart';
import 'package:fred_app/data/spots/spots_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../globals/models/filter.dart';
import '../../../../globals/models/spot.dart';

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
      } else if (filterNames
          .any((element) => spot.content.tags.contains(element))) {
        filteredSpots.add(spot);
      }
    }
    return filteredSpots;
  }

  //SETTERS
  void setFilterState(Filter filter) {
    allFilters.firstWhere((element) => element.name == filter.name).filter =
        !filter.filter;

    notifyListeners();
  }
}
