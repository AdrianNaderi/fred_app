import 'package:flutter/material.dart';
import 'package:fred_app/data/rating/rating_provider.dart';
import 'package:fred_app/data/user/user_provider.dart';
import 'package:fred_app/globals/models/rating.dart';
import 'package:fred_app/globals/models/user.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final friendsDataController = ChangeNotifierProvider<FriendsDataController>(
  (ref) => FriendsDataController(
      allFriends: ref.watch(userProvider).users,
      allReviews: ref.watch(reviewProvider).reviews),
);

class FriendsDataController extends ChangeNotifier {
  final List<User> allFriends;
  final List<Review> allReviews;

  FriendsDataController({
    required this.allFriends,
    required this.allReviews,
  });

  List<User> get userFriends {
    final userFriendsId =
        allFriends.firstWhere((element) => element.id == "1").friends;
    final List<User> userFriends = allFriends
        .where((element) => userFriendsId.contains(element.id))
        .toList();

    return userFriends;
  }

  //KPI
  double getAvgUserReviewRating(String userId) {
    List<double> userRatings = allReviews
        .where((element) => element.userId == userId)
        .map((e) => e.rating)
        .toList();

    double sum = 0;
    for (double rating in userRatings) {
      sum += rating;
    }
    double avg = sum / userRatings.length;
    print(avg.isNaN);
    avg.isNaN ? avg = 0 : avg;
    return avg;
  }

  int getNumberofUserReviews(String userId) {
    return allReviews
        .where((element) => element.userId == userId)
        .toList()
        .length;
  }
}
