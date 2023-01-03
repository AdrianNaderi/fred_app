import 'package:flutter/material.dart';
import 'package:fred_app/data/explore/explore_spots_provider.dart';
import 'package:fred_app/features/explore/models/explore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userVisitedProvider = ChangeNotifierProvider<UserVisitedProvider>(
  (ref) => UserVisitedProvider(allSpots: ref.read(spotsProvider).spots),
);

class UserVisitedProvider extends ChangeNotifier {
  final List<Spot> allSpots;
  UserVisitedProvider({
    required this.allSpots,
  });

  Map<String, List<String>> userVisited = {
    "Robin": ["001"],
  };
//GETTERS------------------------------------------------------------------------------
//SPOTS-------------
  List<Spot> getUserVisitedSpots({required String userId}) {
    return allSpots
        .where((element) => userVisited.entries
            .firstWhere((element) => element.key == userId)
            .value
            .contains(element.id))
        .toList();
  }


  bool getSingleUserVisited(
      {required String userId, required String exploreId}) {
    return userVisited.entries
        .firstWhere((element) => element.key == userId)
        .value
        .contains(exploreId);
  }

  //SETTERS
  void setUserVisited({required String userId, required String exploreId}) {
    List<String> visited = userVisited.entries
        .firstWhere((element) => element.key == userId)
        .value;

    visited.contains(exploreId)
        ? visited.remove(exploreId)
        : visited.add(exploreId);
    notifyListeners();
  }
}
