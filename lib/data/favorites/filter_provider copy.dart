import 'package:flutter/material.dart';
import 'package:fred_app/data/explore/explore_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../features/explore/models/explore.dart';
import '../../globals/models/filter.dart';

final filterProvider = ChangeNotifierProvider<FilterProvider>(
  (ref) => FilterProvider(
    allSpots: ref.read(spotsProvider).spots,
  ),
);

class FilterProvider extends ChangeNotifier {
  final List<Spot> allSpots;
  FilterProvider({
    required this.allSpots,
  });

  //LIST OF TAGS
  List<Filter> get listOfTagFilters => _setOfTagFilters;

  List<String> get listOfTagNames =>
      listOfTagFilters.map((e) => e.name).toList();

  //GETTERS
  List<Filter> get _setOfTagFilters {
    Set<Filter> tags = {};
    for (Spot spot in allSpots) {
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
