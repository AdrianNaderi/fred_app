import 'package:flutter/material.dart';
import 'package:fred_app/globals/models/rating.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final ratingsProvider = Provider<RatingProvider>((ref) => RatingProvider());

class RatingProvider extends ChangeNotifier {
  final List<Rating> _rating = [
    Rating(
      id: "001",
      userId: "1",
      spotId: "1",
      rating: 4.6,
      review:
          "Supertrevlig personal med mysig inredning. Maten tog lite tid att få dock.",
      createdDate: DateTime(2023, 1, 3),
    )
  ];

  List<Rating> get rating => [..._rating];
}
