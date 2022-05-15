import 'package:freezed_annotation/freezed_annotation.dart';

part 'concurrent_process_state.freezed.dart';

@freezed
class ConcurrentProcessState with _$ConcurrentProcessState {
  const ConcurrentProcessState._();

  const factory ConcurrentProcessState({
    @Default(8) int current,
    @Default(1) int min,
    @Default(4) int max,
  }) = _ConcurrentProcessState;
}
