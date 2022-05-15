// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'resource_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResourceState {
  String get scriptFilePath => throw _privateConstructorUsedError;
  String get settingsFilePath => throw _privateConstructorUsedError;
  String get applicationSupportDirectoryPath =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResourceStateCopyWith<ResourceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceStateCopyWith<$Res> {
  factory $ResourceStateCopyWith(
          ResourceState value, $Res Function(ResourceState) then) =
      _$ResourceStateCopyWithImpl<$Res>;
  $Res call(
      {String scriptFilePath,
      String settingsFilePath,
      String applicationSupportDirectoryPath});
}

/// @nodoc
class _$ResourceStateCopyWithImpl<$Res>
    implements $ResourceStateCopyWith<$Res> {
  _$ResourceStateCopyWithImpl(this._value, this._then);

  final ResourceState _value;
  // ignore: unused_field
  final $Res Function(ResourceState) _then;

  @override
  $Res call({
    Object? scriptFilePath = freezed,
    Object? settingsFilePath = freezed,
    Object? applicationSupportDirectoryPath = freezed,
  }) {
    return _then(_value.copyWith(
      scriptFilePath: scriptFilePath == freezed
          ? _value.scriptFilePath
          : scriptFilePath // ignore: cast_nullable_to_non_nullable
              as String,
      settingsFilePath: settingsFilePath == freezed
          ? _value.settingsFilePath
          : settingsFilePath // ignore: cast_nullable_to_non_nullable
              as String,
      applicationSupportDirectoryPath: applicationSupportDirectoryPath ==
              freezed
          ? _value.applicationSupportDirectoryPath
          : applicationSupportDirectoryPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ResourceStateCopyWith<$Res>
    implements $ResourceStateCopyWith<$Res> {
  factory _$$_ResourceStateCopyWith(
          _$_ResourceState value, $Res Function(_$_ResourceState) then) =
      __$$_ResourceStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String scriptFilePath,
      String settingsFilePath,
      String applicationSupportDirectoryPath});
}

/// @nodoc
class __$$_ResourceStateCopyWithImpl<$Res>
    extends _$ResourceStateCopyWithImpl<$Res>
    implements _$$_ResourceStateCopyWith<$Res> {
  __$$_ResourceStateCopyWithImpl(
      _$_ResourceState _value, $Res Function(_$_ResourceState) _then)
      : super(_value, (v) => _then(v as _$_ResourceState));

  @override
  _$_ResourceState get _value => super._value as _$_ResourceState;

  @override
  $Res call({
    Object? scriptFilePath = freezed,
    Object? settingsFilePath = freezed,
    Object? applicationSupportDirectoryPath = freezed,
  }) {
    return _then(_$_ResourceState(
      scriptFilePath: scriptFilePath == freezed
          ? _value.scriptFilePath
          : scriptFilePath // ignore: cast_nullable_to_non_nullable
              as String,
      settingsFilePath: settingsFilePath == freezed
          ? _value.settingsFilePath
          : settingsFilePath // ignore: cast_nullable_to_non_nullable
              as String,
      applicationSupportDirectoryPath: applicationSupportDirectoryPath ==
              freezed
          ? _value.applicationSupportDirectoryPath
          : applicationSupportDirectoryPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResourceState implements _ResourceState {
  const _$_ResourceState(
      {required this.scriptFilePath,
      required this.settingsFilePath,
      required this.applicationSupportDirectoryPath});

  @override
  final String scriptFilePath;
  @override
  final String settingsFilePath;
  @override
  final String applicationSupportDirectoryPath;

  @override
  String toString() {
    return 'ResourceState(scriptFilePath: $scriptFilePath, settingsFilePath: $settingsFilePath, applicationSupportDirectoryPath: $applicationSupportDirectoryPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResourceState &&
            const DeepCollectionEquality()
                .equals(other.scriptFilePath, scriptFilePath) &&
            const DeepCollectionEquality()
                .equals(other.settingsFilePath, settingsFilePath) &&
            const DeepCollectionEquality().equals(
                other.applicationSupportDirectoryPath,
                applicationSupportDirectoryPath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(scriptFilePath),
      const DeepCollectionEquality().hash(settingsFilePath),
      const DeepCollectionEquality().hash(applicationSupportDirectoryPath));

  @JsonKey(ignore: true)
  @override
  _$$_ResourceStateCopyWith<_$_ResourceState> get copyWith =>
      __$$_ResourceStateCopyWithImpl<_$_ResourceState>(this, _$identity);
}

abstract class _ResourceState implements ResourceState {
  const factory _ResourceState(
          {required final String scriptFilePath,
          required final String settingsFilePath,
          required final String applicationSupportDirectoryPath}) =
      _$_ResourceState;

  @override
  String get scriptFilePath => throw _privateConstructorUsedError;
  @override
  String get settingsFilePath => throw _privateConstructorUsedError;
  @override
  String get applicationSupportDirectoryPath =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ResourceStateCopyWith<_$_ResourceState> get copyWith =>
      throw _privateConstructorUsedError;
}
