// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SettingsTearOff {
  const _$SettingsTearOff();

  _Settings call(
      {int autoUpdateIntervalInMinutes = 15,
      int numConcurrentProcess = 1,
      bool enableAutoUpdate = false}) {
    return _Settings(
      autoUpdateIntervalInMinutes: autoUpdateIntervalInMinutes,
      numConcurrentProcess: numConcurrentProcess,
      enableAutoUpdate: enableAutoUpdate,
    );
  }
}

/// @nodoc
const $Settings = _$SettingsTearOff();

/// @nodoc
mixin _$Settings {
  int get autoUpdateIntervalInMinutes => throw _privateConstructorUsedError;
  int get numConcurrentProcess => throw _privateConstructorUsedError;
  bool get enableAutoUpdate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsCopyWith<Settings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsCopyWith<$Res> {
  factory $SettingsCopyWith(Settings value, $Res Function(Settings) then) =
      _$SettingsCopyWithImpl<$Res>;
  $Res call(
      {int autoUpdateIntervalInMinutes,
      int numConcurrentProcess,
      bool enableAutoUpdate});
}

/// @nodoc
class _$SettingsCopyWithImpl<$Res> implements $SettingsCopyWith<$Res> {
  _$SettingsCopyWithImpl(this._value, this._then);

  final Settings _value;
  // ignore: unused_field
  final $Res Function(Settings) _then;

  @override
  $Res call({
    Object? autoUpdateIntervalInMinutes = freezed,
    Object? numConcurrentProcess = freezed,
    Object? enableAutoUpdate = freezed,
  }) {
    return _then(_value.copyWith(
      autoUpdateIntervalInMinutes: autoUpdateIntervalInMinutes == freezed
          ? _value.autoUpdateIntervalInMinutes
          : autoUpdateIntervalInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      numConcurrentProcess: numConcurrentProcess == freezed
          ? _value.numConcurrentProcess
          : numConcurrentProcess // ignore: cast_nullable_to_non_nullable
              as int,
      enableAutoUpdate: enableAutoUpdate == freezed
          ? _value.enableAutoUpdate
          : enableAutoUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SettingsCopyWith<$Res> implements $SettingsCopyWith<$Res> {
  factory _$SettingsCopyWith(_Settings value, $Res Function(_Settings) then) =
      __$SettingsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int autoUpdateIntervalInMinutes,
      int numConcurrentProcess,
      bool enableAutoUpdate});
}

/// @nodoc
class __$SettingsCopyWithImpl<$Res> extends _$SettingsCopyWithImpl<$Res>
    implements _$SettingsCopyWith<$Res> {
  __$SettingsCopyWithImpl(_Settings _value, $Res Function(_Settings) _then)
      : super(_value, (v) => _then(v as _Settings));

  @override
  _Settings get _value => super._value as _Settings;

  @override
  $Res call({
    Object? autoUpdateIntervalInMinutes = freezed,
    Object? numConcurrentProcess = freezed,
    Object? enableAutoUpdate = freezed,
  }) {
    return _then(_Settings(
      autoUpdateIntervalInMinutes: autoUpdateIntervalInMinutes == freezed
          ? _value.autoUpdateIntervalInMinutes
          : autoUpdateIntervalInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      numConcurrentProcess: numConcurrentProcess == freezed
          ? _value.numConcurrentProcess
          : numConcurrentProcess // ignore: cast_nullable_to_non_nullable
              as int,
      enableAutoUpdate: enableAutoUpdate == freezed
          ? _value.enableAutoUpdate
          : enableAutoUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Settings implements _Settings {
  const _$_Settings(
      {this.autoUpdateIntervalInMinutes = 15,
      this.numConcurrentProcess = 1,
      this.enableAutoUpdate = false});

  @JsonKey()
  @override
  final int autoUpdateIntervalInMinutes;
  @JsonKey()
  @override
  final int numConcurrentProcess;
  @JsonKey()
  @override
  final bool enableAutoUpdate;

  @override
  String toString() {
    return 'Settings(autoUpdateIntervalInMinutes: $autoUpdateIntervalInMinutes, numConcurrentProcess: $numConcurrentProcess, enableAutoUpdate: $enableAutoUpdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Settings &&
            const DeepCollectionEquality().equals(
                other.autoUpdateIntervalInMinutes,
                autoUpdateIntervalInMinutes) &&
            const DeepCollectionEquality()
                .equals(other.numConcurrentProcess, numConcurrentProcess) &&
            const DeepCollectionEquality()
                .equals(other.enableAutoUpdate, enableAutoUpdate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(autoUpdateIntervalInMinutes),
      const DeepCollectionEquality().hash(numConcurrentProcess),
      const DeepCollectionEquality().hash(enableAutoUpdate));

  @JsonKey(ignore: true)
  @override
  _$SettingsCopyWith<_Settings> get copyWith =>
      __$SettingsCopyWithImpl<_Settings>(this, _$identity);
}

abstract class _Settings implements Settings {
  const factory _Settings(
      {int autoUpdateIntervalInMinutes,
      int numConcurrentProcess,
      bool enableAutoUpdate}) = _$_Settings;

  @override
  int get autoUpdateIntervalInMinutes;
  @override
  int get numConcurrentProcess;
  @override
  bool get enableAutoUpdate;
  @override
  @JsonKey(ignore: true)
  _$SettingsCopyWith<_Settings> get copyWith =>
      throw _privateConstructorUsedError;
}
