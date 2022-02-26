// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'concurrent_process_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConcurrentProcessStateTearOff {
  const _$ConcurrentProcessStateTearOff();

  _ConcurrentProcessState call({int current = 8, int min = 1, int max = 8}) {
    return _ConcurrentProcessState(
      current: current,
      min: min,
      max: max,
    );
  }
}

/// @nodoc
const $ConcurrentProcessState = _$ConcurrentProcessStateTearOff();

/// @nodoc
mixin _$ConcurrentProcessState {
  int get current => throw _privateConstructorUsedError;
  int get min => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConcurrentProcessStateCopyWith<ConcurrentProcessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConcurrentProcessStateCopyWith<$Res> {
  factory $ConcurrentProcessStateCopyWith(ConcurrentProcessState value,
          $Res Function(ConcurrentProcessState) then) =
      _$ConcurrentProcessStateCopyWithImpl<$Res>;
  $Res call({int current, int min, int max});
}

/// @nodoc
class _$ConcurrentProcessStateCopyWithImpl<$Res>
    implements $ConcurrentProcessStateCopyWith<$Res> {
  _$ConcurrentProcessStateCopyWithImpl(this._value, this._then);

  final ConcurrentProcessState _value;
  // ignore: unused_field
  final $Res Function(ConcurrentProcessState) _then;

  @override
  $Res call({
    Object? current = freezed,
    Object? min = freezed,
    Object? max = freezed,
  }) {
    return _then(_value.copyWith(
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$ConcurrentProcessStateCopyWith<$Res>
    implements $ConcurrentProcessStateCopyWith<$Res> {
  factory _$ConcurrentProcessStateCopyWith(_ConcurrentProcessState value,
          $Res Function(_ConcurrentProcessState) then) =
      __$ConcurrentProcessStateCopyWithImpl<$Res>;
  @override
  $Res call({int current, int min, int max});
}

/// @nodoc
class __$ConcurrentProcessStateCopyWithImpl<$Res>
    extends _$ConcurrentProcessStateCopyWithImpl<$Res>
    implements _$ConcurrentProcessStateCopyWith<$Res> {
  __$ConcurrentProcessStateCopyWithImpl(_ConcurrentProcessState _value,
      $Res Function(_ConcurrentProcessState) _then)
      : super(_value, (v) => _then(v as _ConcurrentProcessState));

  @override
  _ConcurrentProcessState get _value => super._value as _ConcurrentProcessState;

  @override
  $Res call({
    Object? current = freezed,
    Object? min = freezed,
    Object? max = freezed,
  }) {
    return _then(_ConcurrentProcessState(
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
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

class _$_ConcurrentProcessState extends _ConcurrentProcessState {
  const _$_ConcurrentProcessState(
      {this.current = 8, this.min = 1, this.max = 8})
      : super._();

  @JsonKey()
  @override
  final int current;
  @JsonKey()
  @override
  final int min;
  @JsonKey()
  @override
  final int max;

  @override
  String toString() {
    return 'ConcurrentProcessState(current: $current, min: $min, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConcurrentProcessState &&
            const DeepCollectionEquality().equals(other.current, current) &&
            const DeepCollectionEquality().equals(other.min, min) &&
            const DeepCollectionEquality().equals(other.max, max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(current),
      const DeepCollectionEquality().hash(min),
      const DeepCollectionEquality().hash(max));

  @JsonKey(ignore: true)
  @override
  _$ConcurrentProcessStateCopyWith<_ConcurrentProcessState> get copyWith =>
      __$ConcurrentProcessStateCopyWithImpl<_ConcurrentProcessState>(
          this, _$identity);
}

abstract class _ConcurrentProcessState extends ConcurrentProcessState {
  const factory _ConcurrentProcessState({int current, int min, int max}) =
      _$_ConcurrentProcessState;
  const _ConcurrentProcessState._() : super._();

  @override
  int get current;
  @override
  int get min;
  @override
  int get max;
  @override
  @JsonKey(ignore: true)
  _$ConcurrentProcessStateCopyWith<_ConcurrentProcessState> get copyWith =>
      throw _privateConstructorUsedError;
}
