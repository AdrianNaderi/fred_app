import 'package:flutter/material.dart';
import 'package:fred_app/globals/models/review.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final reviewProvider = Provider<ReviewProvider>((ref) => ReviewProvider());

class ReviewProvider extends ChangeNotifier {
  final List<Review> _rating = [
    Review(
      id: "1",
      userId: "1",
      spotId: "1",
      rating: 4.6,
      comment:
          "Supertrevlig personal med mysig inredning. Maten tog lite tid att få dock.",
      createdDate: DateTime(2022, 12, 28),
      visitedWeekDay: 1,
    ),
    Review(
      id: "2",
      userId: "2",
      spotId: "1",
      rating: 4.4,
      comment: "Andra gången var inte lika bra som första gången",
      createdDate: DateTime(2022, 12, 4),
      visitedWeekDay: 2,
    ),
    Review(
      id: "3",
      userId: "3",
      spotId: "1",
      rating: 4.2,
      comment: "Andra gången var inte lika bra som första gången",
      createdDate: DateTime(2022, 11, 4),
      visitedWeekDay: 3,
    ),
    Review(
      id: "4",
      userId: "1",
      spotId: "2",
      rating: 4.7,
      comment: "Andra gången var inte lika bra som första gången",
      createdDate: DateTime(2022, 7, 1),
      visitedWeekDay: 4,
    ),
    Review(
      id: "5",
      userId: "2",
      spotId: "2",
      rating: 4.1,
      comment: "Andra gången var inte lika bra som första gången",
      createdDate: DateTime(2021, 1, 4),
      visitedWeekDay: 5,
    ),
    Review(
      id: "5",
      userId: "3",
      spotId: "2",
      rating: 4.0,
      comment: "Andra gången var inte lika bra som första gången",
      createdDate: DateTime(2021, 1, 4),
      visitedWeekDay: 5,
    ),
  ];

  List<Review> get reviews => [..._rating];
}
