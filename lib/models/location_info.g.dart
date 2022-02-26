// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      location: json['location'] as String,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'location': instance.location,
      'result': instance.result,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      ajaxresult:
          Ajaxresult.fromJson(json['ajaxresult'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'ajaxresult': instance.ajaxresult,
    };

_$_Ajaxresult _$$_AjaxresultFromJson(Map<String, dynamic> json) =>
    _$_Ajaxresult(
      slots: json['slots'] == null
          ? null
          : Slots.fromJson(json['slots'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AjaxresultToJson(_$_Ajaxresult instance) =>
    <String, dynamic>{
      'slots': instance.slots,
    };

_$_Slots _$$_SlotsFromJson(Map<String, dynamic> json) => _$_Slots(
      listTimeSlot: (json['listTimeSlot'] as List<dynamic>?)
              ?.map((e) => ListTimeSlot.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      nextAvailableDate: const CustomDateTimeConverter()
          .fromJson(json['nextAvailableDate'] as String?),
    );

Map<String, dynamic> _$$_SlotsToJson(_$_Slots instance) => <String, dynamic>{
      'listTimeSlot': instance.listTimeSlot,
      'nextAvailableDate':
          const CustomDateTimeConverter().toJson(instance.nextAvailableDate),
    };

_$_ListTimeSlot _$$_ListTimeSlotFromJson(Map<String, dynamic> json) =>
    _$_ListTimeSlot(
      availability: json['availability'] as bool,
      slotNumber: json['slotNumber'] as int?,
      startTime: const CustomDateTimeConverter()
          .fromJson(json['startTime'] as String?),
    );

Map<String, dynamic> _$$_ListTimeSlotToJson(_$_ListTimeSlot instance) =>
    <String, dynamic>{
      'availability': instance.availability,
      'slotNumber': instance.slotNumber,
      'startTime': const CustomDateTimeConverter().toJson(instance.startTime),
    };
