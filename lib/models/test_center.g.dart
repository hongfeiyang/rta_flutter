// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_center.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TestCenter _$$_TestCenterFromJson(Map<String, dynamic> json) =>
    _$_TestCenter(
      id: json['id'] as int,
      name: json['name'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      distance: (json['distance'] as num?)?.toDouble(),
      distClass: json['dist_class'] as String?,
    );

Map<String, dynamic> _$$_TestCenterToJson(_$_TestCenter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'distance': instance.distance,
      'dist_class': instance.distClass,
    };
