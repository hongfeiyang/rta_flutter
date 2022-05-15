import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rta_flutter/models/test_center.dart';

import '../providers/location_availability_provider.dart';
import 'location_info.dart';

part 'location_state.freezed.dart';

@freezed
class LocationState with _$LocationState {
  const LocationState._();

  factory LocationState({
    required String name,
    required LocationInfo locationInfo,
    required TestCenter testCenter,
    @Default(false) bool selected,
    double? distanceToCurrentLocation,
    @Default(LocationInfoFetchingStatus.completed)
        LocationInfoFetchingStatus status,
    Object? error,
    DateTime? lastUpdated,
    int? pid,
  }) = _LocationState;

  int get numberOfVacancies {
    return locationInfo.result?.ajaxresult.slots?.listTimeSlot.where((element) {
          return element.availability == true;
        }).length ??
        0;
  }
}
