import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class Settings with _$Settings {
  const factory Settings({
    @Default(15) int autoUpdateIntervalInMinutes,
    @Default(1) int numConcurrentProcess,
    @Default(false) bool enableAutoUpdate,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'password') String? password,
    @Default('python3')
    @JsonKey(name: 'python3_executable')
        String? python3ExePath,
    @Default(false) @JsonKey(name: 'have_booking') bool haveBooking,
    @Default(true) @JsonKey(name: 'headless') bool headless,
    @Default(2) @JsonKey(name: 'wait_timer') int waitTimer,
    @Default('Car') @JsonKey(name: 'main_category') mainCategory,
    @Default('DT') @JsonKey(name: 'sub_category') subCategory,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}
