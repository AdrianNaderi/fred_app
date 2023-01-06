import 'package:equatable/equatable.dart';

class Friend extends Equatable {
  final String id;
  final String name;

  const Friend({
    required this.id,
    required this.name,
  });

  @override
  List<Object?> get props => throw [
        id,
        name,
      ];
}
