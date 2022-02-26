import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';

@freezed
class Settings with _$Settings {
  const factory Settings({
    @Default(15) int autoUpdateIntervalInMinutes,
    @Default(1) int numConcurrentProcess,
    @Default(false) bool enableAutoUpdate,
  }) = _Settings;
}
