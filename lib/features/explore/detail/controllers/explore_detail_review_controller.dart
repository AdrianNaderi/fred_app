import 'package:flutter/material.dart';
import 'package:fred_app/globals/models/user.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../data/rating/rating_provider.dart';
import '../../../../data/user/user_provider.dart';
import '../../../../globals/models/rating.dart';

final exploreDetailReviewController =
    ChangeNotifierProvider.autoDispose<ExploreDetailReviewController>(
  (ref) => ExploreDetailReviewController(
    allRatings: ref.read(reviewProvider).reviews,
    allUsers: ref.read(userProvider).users,
  ),
);

class ExploreDetailReviewController extends ChangeNotifier {
  final List<Review> allRatings;
  final List<User> allUsers;

  ExploreDetailReviewController({
    required this.allRatings,
    required this.allUsers,
  });

  //DATA

  List<Review> getReviewsforSpot(String spotId) {
    return allRatings.where((element) => element.spotId == spotId).toList();
  }

  User getUserforComment(String userId) {
    return allUsers.firstWhere((element) => element.id == userId);
  }

  //KPIs

  double getAvgRatingforSpot(String spotId) {
    List<double> spotRatings =
        getReviewsforSpot(spotId).map((e) => e.rating).toList();
    double sum = 0;
    for (double rating in spotRatings) {
      sum += rating;
    }
    double avg = sum / spotRatings.length;
    return avg;
  }
}
