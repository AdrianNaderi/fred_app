import 'package:equatable/equatable.dart';

class Spot extends Equatable {
  final String id;
  final String name;
  final String address;
  final String area;
  final String title;
  final String description;
  final List<String> tags;
  final List<String> images;

  const Spot({
    required this.id,
    required this.name,
    required this.address,
    required this.area,
    required this.title,
    required this.description,
    required this.tags,
    required this.images,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        name,
        address,
        area,
        title,
        description,
        tags,
        images,
      ];
}
