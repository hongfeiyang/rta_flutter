import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils.dart';

part 'location_info.freezed.dart';
part 'location_info.g.dart';

@freezed
class LocationInfo with _$LocationInfo {
  const factory LocationInfo({
    required String location,
    Result? result,
  }) = _Location;

  factory LocationInfo.fromJson(Map<String, dynamic> json) => _$LocationInfoFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required Ajaxresult ajaxresult,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Ajaxresult with _$Ajaxresult {
  const factory Ajaxresult({
    Slots? slots,
  }) = _Ajaxresult;

  factory Ajaxresult.fromJson(Map<String, dynamic> json) => _$AjaxresultFromJson(json);
}

@freezed
class Slots with _$Slots {
  const factory Slots({
    @Default([]) List<ListTimeSlot> listTimeSlot,
    @CustomDateTimeConverter() DateTime? nextAvailableDate,
  }) = _Slots;

  factory Slots.fromJson(Map<String, dynamic> json) => _$SlotsFromJson(json);
}

@freezed
class ListTimeSlot with _$ListTimeSlot {
  const factory ListTimeSlot({
    required bool availability,
    int? slotNumber,
    @CustomDateTimeConverter() DateTime? startTime,
  }) = _ListTimeSlot;

  factory ListTimeSlot.fromJson(Map<String, dynamic> json) => _$ListTimeSlotFromJson(json);
}

class CustomDateTimeConverter implements JsonConverter<DateTime?, String?> {
  const CustomDateTimeConverter();

  @override
  DateTime? fromJson(String? json) {
    if (json == null) return null;
    return CustomeTimeParser.parseRTADateTime(json);
  }

  @override
  String toJson(DateTime? json) => json?.toIso8601String() ?? '#null';
}
