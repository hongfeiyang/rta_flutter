// To parse this JSON data, do
//
//     final testCenter = testCenterFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rta_flutter/models/location_coordinates.dart';

part 'test_center.freezed.dart';
part 'test_center.g.dart';

@freezed
class TestCenter with _$TestCenter {
  const TestCenter._();
  const factory TestCenter({
    required int id,
    required String name,
    required double latitude,
    required double longitude,
    double? distance,
    @JsonKey(name: 'dist_class') String? distClass,
  }) = _TestCenter;

  factory TestCenter.fromJson(Map<String, dynamic> json) => _$TestCenterFromJson(json);

  LocationCoordinates get coordinate {
    return LocationCoordinates(latitude: latitude, longitude: longitude);
  }
}
