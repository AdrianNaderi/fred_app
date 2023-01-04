import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../data/rating/rating_provider.dart';
import '../../../../globals/models/rating.dart';

final exploreDetailRatingController = ChangeNotifierProvider(
  (ref) => ExploreDetailRatingController(
      allRatings: ref.read(ratingsProvider).rating),
);

class ExploreDetailRatingController extends ChangeNotifier {
  final List<Rating> allRatings;

  ExploreDetailRatingController({
    required this.allRatings,
  });

  List<Rating> getRatingsforSpot(String spotId) {
    return allRatings.where((element) => element.spotId == spotId).toList();
  }
}
