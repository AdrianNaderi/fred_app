import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userVisitedProvider = ChangeNotifierProvider<UserVisitedProvider>(
  (ref) => UserVisitedProvider(),
);

class UserVisitedProvider extends ChangeNotifier {
  Map<String, List<String>> userVisited = {
    "Robin": ["001"],
  };

  //GETTERS
  List<String> getAllUserVisited({required String userId}) {
    return userVisited.entries
        .firstWhere((element) => element.key == userId)
        .value;
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
