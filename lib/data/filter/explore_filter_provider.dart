import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../globals/models/filter.dart';
import '../../globals/models/spot.dart';
import '../spots/spots_provider.dart';

final filterProvider = ChangeNotifierProvider<ExploreFilterProvider>(
  (ref) => ExploreFilterProvider(
    allSpots: ref.read(spotsProvider).spots,
  ),
);

class ExploreFilterProvider extends ChangeNotifier {
  final List<Spot> allSpots;
  ExploreFilterProvider({
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
      for (String tag in spot.content.tags) {
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
