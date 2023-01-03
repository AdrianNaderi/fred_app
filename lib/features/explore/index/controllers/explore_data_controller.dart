import 'package:flutter/material.dart';
import 'package:fred_app/data/explore/explore_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/explore.dart';

final exploreDataController = Provider((ref) => ExploreDataController());

class ExploreDataController extends ChangeNotifier {
  final ExploreData = ExploreProvider().spots;

  //GETTERS
  Spot getSpotById(String id) {
    return ExploreData.firstWhere((element) => element.id == id);
  }
}
