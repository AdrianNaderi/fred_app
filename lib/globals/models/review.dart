import 'package:equatable/equatable.dart';

class Review extends Equatable {
  final String id;
  final String userId;
  final String spotId;
  final double rating;
  final String comment;
  final DateTime createdDate;
  final int visitedWeekDay;

  const Review({
    required this.id,
    required this.userId,
    required this.spotId,
    required this.rating,
    required this.comment,
    required this.createdDate,
    required this.visitedWeekDay,
  });

  @override
  List<Object?> get props => [
        id,
        userId,
        spotId,
        rating,
        comment,
        createdDate,
        visitedWeekDay,
      ];
}
