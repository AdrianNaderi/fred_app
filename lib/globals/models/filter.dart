import 'package:equatable/equatable.dart';

class Filter extends Equatable {
  final String name;
  bool filter;

  Filter({
    required this.name,
    this.filter = false,
  });

  @override
  List<Object?> get props => [
        name,
        filter,
      ];
}
