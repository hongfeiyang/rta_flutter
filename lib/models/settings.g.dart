// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Settings _$$_SettingsFromJson(Map<String, dynamic> json) => _$_Settings(
      autoUpdateIntervalInMinutes:
          json['autoUpdateIntervalInMinutes'] as int? ?? 15,
      numConcurrentProcess: json['numConcurrentProcess'] as int? ?? 1,
      enableAutoUpdate: json['enableAutoUpdate'] as bool? ?? false,
      username: json['username'] as String?,
      password: json['password'] as String?,
      python3ExePath: json['python3_executable'] as String? ?? 'python3',
      haveBooking: json['have_booking'] as bool? ?? false,
      headless: json['headless'] as bool? ?? true,
      waitTimer: json['wait_timer'] as int? ?? 2,
      mainCategory: json['main_category'] ?? 'Car',
      subCategory: json['sub_category'] ?? 'DT',
    );

Map<String, dynamic> _$$_SettingsToJson(_$_Settings instance) =>
    <String, dynamic>{
      'autoUpdateIntervalInMinutes': instance.autoUpdateIntervalInMinutes,
      'numConcurrentProcess': instance.numConcurrentProcess,
      'enableAutoUpdate': instance.enableAutoUpdate,
      'username': instance.username,
      'password': instance.password,
      'python3_executable': instance.python3ExePath,
      'have_booking': instance.haveBooking,
      'headless': instance.headless,
      'wait_timer': instance.waitTimer,
      'main_category': instance.mainCategory,
      'sub_category': instance.subCategory,
    };
