import 'package:equatable/equatable.dart';

class Media extends Equatable {
  final List<String> images;
  final String icon;

  const Media({
    required this.images,
    required this.icon,
  });

  @override
  List<Object?> get props => [
        images,
        icon,
      ];
}
