import 'package:equatable/equatable.dart';

class Bucket extends Equatable {
  final String id;
  final String name;
  final List<String> userIds;
  final List<String> spotIds;
  final List<String> spotsCompleted;

  const Bucket({
    required this.id,
    required this.name,
    required this.userIds,
    required this.spotIds,
    required this.spotsCompleted,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        userIds,
        spotIds,
        spotsCompleted,
      ];
}
