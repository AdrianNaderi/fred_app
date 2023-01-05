import 'package:equatable/equatable.dart';

class Location extends Equatable {
  final String address;
  final String area;
  final String? googleMapsId;
  final int? lat;
  final int? lng;

  const Location(
      {required this.address,
      required this.area,
      this.googleMapsId,
      this.lat,
      this.lng});

  @override
  List<Object?> get props => [
        address,
        area,
        googleMapsId,
        lat,
        lng,
      ];
}
