import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_coordinates.freezed.dart';

@freezed
class LocationCoordinates with _$LocationCoordinates {
  const LocationCoordinates._();
  const factory LocationCoordinates({
    required double latitude,
    required double longitude,
  }) = _LocationCoordinates;

  /// https://zhajiman.github.io/post/distance_on_earth/
  /// Distance between two points on surface of a sphere
  double distanceTo(LocationCoordinates other) {
    var p = pi / 180;
    var a = 0.5 -
        cos((other.latitude - latitude) * p) / 2 +
        cos(latitude * p) * cos(latitude * p) * (1 - cos((other.longitude - longitude) * p)) / 2;
    return 12742 * asin(sqrt(a)) * 1000;
  }
}
