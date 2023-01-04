import 'package:equatable/equatable.dart';

class Rating extends Equatable {
  final String id;
  final String userId;
  final String spotId;
  final double rating;
  final String review;
  final DateTime createdDate;

  const Rating({
    required this.id,
    required this.userId,
    required this.spotId,
    required this.rating,
    required this.review,
    required this.createdDate,
  });

  @override
  List<Object?> get props => [
        id,
        userId,
        spotId,
        rating,
        review,
        createdDate,
      ];
}
