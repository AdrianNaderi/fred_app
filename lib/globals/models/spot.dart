import 'package:equatable/equatable.dart';
import 'package:fred_app/globals/models/category.dart';
import 'package:fred_app/globals/models/content.dart';
import 'package:fred_app/globals/models/location.dart';
import 'package:fred_app/globals/models/media.dart';

class Spot extends Equatable {
  final String id;
  final String name;
  final String nameShort;
  final Media media;
  final Content content;
  final Location location;
  final Category category;

  const Spot({
    required this.id,
    required this.name,
    required this.nameShort,
    required this.media,
    required this.content,
    required this.location,
    required this.category,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        nameShort,
        media.images,
        media.icon,
        content.title,
        content.description,
        content.tags,
        location.props
      ];
}