import 'package:equatable/equatable.dart';

class Content extends Equatable {
  final String title;
  final String description;
  final List<String> tags;

  const Content(
      {required this.title, required this.description, required this.tags});

  @override
  List<Object?> get props => [
        title,
        description,
        tags,
      ];
}
