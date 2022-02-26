import 'package:freezed_annotation/freezed_annotation.dart';

part 'auto_update_timer_state.freezed.dart';

@freezed
class AutoUpdateTimerState with _$AutoUpdateTimerState {
  const AutoUpdateTimerState._();

  /// In seconds
  const factory AutoUpdateTimerState({
    @Default(false) bool enabled,
    @Default(180) int interval,
    int? timeTillNextUpdate,
    @Default(1 * 60) int min,
    @Default(120 * 60) int max,
  }) = _AutoUpdateTimerState;
}
