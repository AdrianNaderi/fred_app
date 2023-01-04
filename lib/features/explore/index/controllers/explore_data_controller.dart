import 'package:flutter/material.dart';
import 'package:fred_app/data/spots/spots_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../globals/models/spot.dart';

final exploreDataController = Provider((ref) => ExploreDataController());

class ExploreDataController extends ChangeNotifier {
  final ExploreData = SpotsProvider().spots;

  //GETTERS
  Spot getSpotById(String id) {
    return ExploreData.firstWhere((element) => element.id == id);
  }
}
