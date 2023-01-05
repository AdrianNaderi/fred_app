import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String main;
  final String mainImage;
  final String sub;
  final String subImage;

  const Category({
    required this.main,
    required this.mainImage,
    required this.sub,
    required this.subImage,
  });

  @override
  List<Object?> get props => [
        main,
        mainImage,
        sub,
        subImage,
      ];
}
