// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auto_update_timer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AutoUpdateTimerState {
  bool get enabled => throw _privateConstructorUsedError;
  int get interval => throw _privateConstructorUsedError;
  int? get timeTillNextUpdate => throw _privateConstructorUsedError;
  int get min => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AutoUpdateTimerStateCopyWith<AutoUpdateTimerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoUpdateTimerStateCopyWith<$Res> {
  factory $AutoUpdateTimerStateCopyWith(AutoUpdateTimerState value,
          $Res Function(AutoUpdateTimerState) then) =
      _$AutoUpdateTimerStateCopyWithImpl<$Res>;
  $Res call(
      {bool enabled, int interval, int? timeTillNextUpdate, int min, int max});
}

/// @nodoc
class _$AutoUpdateTimerStateCopyWithImpl<$Res>
    implements $AutoUpdateTimerStateCopyWith<$Res> {
  _$AutoUpdateTimerStateCopyWithImpl(this._value, this._then);

  final AutoUpdateTimerState _value;
  // ignore: unused_field
  final $Res Function(AutoUpdateTimerState) _then;

  @override
  $Res call({
    Object? enabled = freezed,
    Object? interval = freezed,
    Object? timeTillNextUpdate = freezed,
    Object? min = freezed,
    Object? max = freezed,
  }) {
    return _then(_value.copyWith(
      enabled: enabled == freezed
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      interval: interval == freezed
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int,
      timeTillNextUpdate: timeTillNextUpdate == freezed
          ? _value.timeTillNextUpdate
          : timeTillNextUpdate // ignore: cast_nullable_to_non_nullable
              as int?,
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_AutoUpdateTimerStateCopyWith<$Res>
    implements $AutoUpdateTimerStateCopyWith<$Res> {
  factory _$$_AutoUpdateTimerStateCopyWith(_$_AutoUpdateTimerState value,
          $Res Function(_$_AutoUpdateTimerState) then) =
      __$$_AutoUpdateTimerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool enabled, int interval, int? timeTillNextUpdate, int min, int max});
}

/// @nodoc
class __$$_AutoUpdateTimerStateCopyWithImpl<$Res>
    extends _$AutoUpdateTimerStateCopyWithImpl<$Res>
    implements _$$_AutoUpdateTimerStateCopyWith<$Res> {
  __$$_AutoUpdateTimerStateCopyWithImpl(_$_AutoUpdateTimerState _value,
      $Res Function(_$_AutoUpdateTimerState) _then)
      : super(_value, (v) => _then(v as _$_AutoUpdateTimerState));

  @override
  _$_AutoUpdateTimerState get _value => super._value as _$_AutoUpdateTimerState;

  @override
  $Res call({
    Object? enabled = freezed,
    Object? interval = freezed,
    Object? timeTillNextUpdate = freezed,
    Object? min = freezed,
    Object? max = freezed,
  }) {
    return _then(_$_AutoUpdateTimerState(
      enabled: enabled == freezed
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      interval: interval == freezed
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int,
      timeTillNextUpdate: timeTillNextUpdate == freezed
          ? _value.timeTillNextUpdate
          : timeTillNextUpdate // ignore: cast_nullable_to_non_nullable
              as int?,
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AutoUpdateTimerState extends _AutoUpdateTimerState {
  const _$_AutoUpdateTimerState(
      {this.enabled = false,
      this.interval = 180,
      this.timeTillNextUpdate,
      this.min = 1 * 60,
      this.max = 120 * 60})
      : super._();

  @override
  @JsonKey()
  final bool enabled;
  @override
  @JsonKey()
  final int interval;
  @override
  final int? timeTillNextUpdate;
  @override
  @JsonKey()
  final int min;
  @override
  @JsonKey()
  final int max;

  @override
  String toString() {
    return 'AutoUpdateTimerState(enabled: $enabled, interval: $interval, timeTillNextUpdate: $timeTillNextUpdate, min: $min, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AutoUpdateTimerState &&
            const DeepCollectionEquality().equals(other.enabled, enabled) &&
            const DeepCollectionEquality().equals(other.interval, interval) &&
            const DeepCollectionEquality()
                .equals(other.timeTillNextUpdate, timeTillNextUpdate) &&
            const DeepCollectionEquality().equals(other.min, min) &&
            const DeepCollectionEquality().equals(other.max, max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(enabled),
      const DeepCollectionEquality().hash(interval),
      const DeepCollectionEquality().hash(timeTillNextUpdate),
      const DeepCollectionEquality().hash(min),
      const DeepCollectionEquality().hash(max));

  @JsonKey(ignore: true)
  @override
  _$$_AutoUpdateTimerStateCopyWith<_$_AutoUpdateTimerState> get copyWith =>
      __$$_AutoUpdateTimerStateCopyWithImpl<_$_AutoUpdateTimerState>(
          this, _$identity);
}

abstract class _AutoUpdateTimerState extends AutoUpdateTimerState {
  const factory _AutoUpdateTimerState(
      {final bool enabled,
      final int interval,
      final int? timeTillNextUpdate,
      final int min,
      final int max}) = _$_AutoUpdateTimerState;
  const _AutoUpdateTimerState._() : super._();

  @override
  bool get enabled => throw _privateConstructorUsedError;
  @override
  int get interval => throw _privateConstructorUsedError;
  @override
  int? get timeTillNextUpdate => throw _privateConstructorUsedError;
  @override
  int get min => throw _privateConstructorUsedError;
  @override
  int get max => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AutoUpdateTimerStateCopyWith<_$_AutoUpdateTimerState> get copyWith =>
      throw _privateConstructorUsedError;
}
