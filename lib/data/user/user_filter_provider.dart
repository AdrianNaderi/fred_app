import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../features/explore/models/explore.dart';
import '../../features/favorites/controllers/favorites_view_selection_controller.dart';
import '../../globals/models/filter.dart';
import '../explore/explore_provider.dart';
import 'user_favorites_provider.dart';
import 'user_visited_provider.dart';

final userFilterProvider = ChangeNotifierProvider<UserFilterProvider>(
  (ref) => UserFilterProvider(
      allSpots: ref.read(spotsProvider).spots,
      userFavoritesId: ref.watch(userFavoritesProvider).getAllUserFavorites(
            userId: "Robin",
          ),
      userVisitedId: ref.watch(userVisitedProvider).getAllUserVisited(
            userId: "Robin",
          ),
      selectedView: ref
          .watch(favoritesViewSelectionController)
          .viewState
          .entries
          .firstWhere((element) => element.value == true)
          .key),
);

class UserFilterProvider extends ChangeNotifier {
  final List<Spot> allSpots;
  final List<String> userFavoritesId;
  final List<String> userVisitedId;
  final String selectedView;
  UserFilterProvider({
    required this.allSpots,
    required this.userFavoritesId,
    required this.userVisitedId,
    required this.selectedView,
  });

  //DATA TO SCREEN--------------------------------------------------------------
  List<Filter> getUserFavoriteFilters() {
    return selectedView == "Ej besökta"
        ? favoriteNotVisitedTagFilters
        : favoriteVisitedTagFilters;
  }

  void setFilter(Filter filter) {
    selectedView == "Ej besökta"
        ? favoriteNotVisitedTagFilters
            .firstWhere((element) => element.name == filter.name)
            .filter = !filter.filter
        : favoriteVisitedTagFilters
            .firstWhere((element) => element.name == filter.name)
            .filter = !filter.filter;

    notifyListeners();
  }

  //FILTERS---------------------------------------------------------------------
  List<Filter> get favoriteTagFilters => _favoriteTagFilters;
  List<Filter> get favoriteVisitedTagFilters => _favoriteVisitedTagFilters;
  List<Filter> get favoriteNotVisitedTagFilters =>
      _favoriteNotVisitedTagFilters;
  //FILTER NAMES---------------------------------------------------------------------
  List<String> get favoriteTagNames =>
      favoriteTagFilters.map((e) => e.name).toList();
  //SPOTS---------------------------------------------------------------------
  List<Spot> get userFavoriteSpots => allSpots
      .where((element) => userFavoritesId.contains(element.id))
      .toList();
  List<Spot> get userFavoriteVisitedSpots => userFavoriteSpots
      .where((element) => userVisitedId.contains(element.id))
      .toList();
  List<Spot> get userFavoriteNotVisitedSpots => userFavoriteSpots
      .where((element) => !userVisitedId.contains(element.id))
      .toList();
  //GETTERS---------------------------------------------------------------------
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

  List<Filter> get _favoriteVisitedTagFilters {
    Set<Filter> tags = {};
    for (Spot spot in userFavoriteVisitedSpots) {
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

  List<Filter> get _favoriteNotVisitedTagFilters {
    Set<Filter> tags = {};
    for (Spot spot in userFavoriteNotVisitedSpots) {
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
