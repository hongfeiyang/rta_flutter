// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationStateTearOff {
  const _$LocationStateTearOff();

  _LocationState call(
      {required String name,
      required LocationInfo locationInfo,
      required TestCenter testCenter,
      bool selected = false,
      double? distanceToCurrentLocation,
      LocationInfoFetchingStatus status = LocationInfoFetchingStatus.completed,
      Object? error,
      DateTime? lastUpdated,
      int? pid}) {
    return _LocationState(
      name: name,
      locationInfo: locationInfo,
      testCenter: testCenter,
      selected: selected,
      distanceToCurrentLocation: distanceToCurrentLocation,
      status: status,
      error: error,
      lastUpdated: lastUpdated,
      pid: pid,
    );
  }
}

/// @nodoc
const $LocationState = _$LocationStateTearOff();

/// @nodoc
mixin _$LocationState {
  String get name => throw _privateConstructorUsedError;
  LocationInfo get locationInfo => throw _privateConstructorUsedError;
  TestCenter get testCenter => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;
  double? get distanceToCurrentLocation => throw _privateConstructorUsedError;
  LocationInfoFetchingStatus get status => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  DateTime? get lastUpdated => throw _privateConstructorUsedError;
  int? get pid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationStateCopyWith<LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res>;
  $Res call(
      {String name,
      LocationInfo locationInfo,
      TestCenter testCenter,
      bool selected,
      double? distanceToCurrentLocation,
      LocationInfoFetchingStatus status,
      Object? error,
      DateTime? lastUpdated,
      int? pid});

  $LocationInfoCopyWith<$Res> get locationInfo;
  $TestCenterCopyWith<$Res> get testCenter;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  final LocationState _value;
  // ignore: unused_field
  final $Res Function(LocationState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? locationInfo = freezed,
    Object? testCenter = freezed,
    Object? selected = freezed,
    Object? distanceToCurrentLocation = freezed,
    Object? status = freezed,
    Object? error = freezed,
    Object? lastUpdated = freezed,
    Object? pid = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      locationInfo: locationInfo == freezed
          ? _value.locationInfo
          : locationInfo // ignore: cast_nullable_to_non_nullable
              as LocationInfo,
      testCenter: testCenter == freezed
          ? _value.testCenter
          : testCenter // ignore: cast_nullable_to_non_nullable
              as TestCenter,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      distanceToCurrentLocation: distanceToCurrentLocation == freezed
          ? _value.distanceToCurrentLocation
          : distanceToCurrentLocation // ignore: cast_nullable_to_non_nullable
              as double?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LocationInfoFetchingStatus,
      error: error == freezed ? _value.error : error,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pid: pid == freezed
          ? _value.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $LocationInfoCopyWith<$Res> get locationInfo {
    return $LocationInfoCopyWith<$Res>(_value.locationInfo, (value) {
      return _then(_value.copyWith(locationInfo: value));
    });
  }

  @override
  $TestCenterCopyWith<$Res> get testCenter {
    return $TestCenterCopyWith<$Res>(_value.testCenter, (value) {
      return _then(_value.copyWith(testCenter: value));
    });
  }
}

/// @nodoc
abstract class _$LocationStateCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory _$LocationStateCopyWith(
          _LocationState value, $Res Function(_LocationState) then) =
      __$LocationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      LocationInfo locationInfo,
      TestCenter testCenter,
      bool selected,
      double? distanceToCurrentLocation,
      LocationInfoFetchingStatus status,
      Object? error,
      DateTime? lastUpdated,
      int? pid});

  @override
  $LocationInfoCopyWith<$Res> get locationInfo;
  @override
  $TestCenterCopyWith<$Res> get testCenter;
}

/// @nodoc
class __$LocationStateCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$LocationStateCopyWith<$Res> {
  __$LocationStateCopyWithImpl(
      _LocationState _value, $Res Function(_LocationState) _then)
      : super(_value, (v) => _then(v as _LocationState));

  @override
  _LocationState get _value => super._value as _LocationState;

  @override
  $Res call({
    Object? name = freezed,
    Object? locationInfo = freezed,
    Object? testCenter = freezed,
    Object? selected = freezed,
    Object? distanceToCurrentLocation = freezed,
    Object? status = freezed,
    Object? error = freezed,
    Object? lastUpdated = freezed,
    Object? pid = freezed,
  }) {
    return _then(_LocationState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      locationInfo: locationInfo == freezed
          ? _value.locationInfo
          : locationInfo // ignore: cast_nullable_to_non_nullable
              as LocationInfo,
      testCenter: testCenter == freezed
          ? _value.testCenter
          : testCenter // ignore: cast_nullable_to_non_nullable
              as TestCenter,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      distanceToCurrentLocation: distanceToCurrentLocation == freezed
          ? _value.distanceToCurrentLocation
          : distanceToCurrentLocation // ignore: cast_nullable_to_non_nullable
              as double?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LocationInfoFetchingStatus,
      error: error == freezed ? _value.error : error,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pid: pid == freezed
          ? _value.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_LocationState extends _LocationState {
  _$_LocationState(
      {required this.name,
      required this.locationInfo,
      required this.testCenter,
      this.selected = false,
      this.distanceToCurrentLocation,
      this.status = LocationInfoFetchingStatus.completed,
      this.error,
      this.lastUpdated,
      this.pid})
      : super._();

  @override
  final String name;
  @override
  final LocationInfo locationInfo;
  @override
  final TestCenter testCenter;
  @JsonKey()
  @override
  final bool selected;
  @override
  final double? distanceToCurrentLocation;
  @JsonKey()
  @override
  final LocationInfoFetchingStatus status;
  @override
  final Object? error;
  @override
  final DateTime? lastUpdated;
  @override
  final int? pid;

  @override
  String toString() {
    return 'LocationState(name: $name, locationInfo: $locationInfo, testCenter: $testCenter, selected: $selected, distanceToCurrentLocation: $distanceToCurrentLocation, status: $status, error: $error, lastUpdated: $lastUpdated, pid: $pid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationState &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.locationInfo, locationInfo) &&
            const DeepCollectionEquality()
                .equals(other.testCenter, testCenter) &&
            const DeepCollectionEquality().equals(other.selected, selected) &&
            const DeepCollectionEquality().equals(
                other.distanceToCurrentLocation, distanceToCurrentLocation) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.pid, pid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(locationInfo),
      const DeepCollectionEquality().hash(testCenter),
      const DeepCollectionEquality().hash(selected),
      const DeepCollectionEquality().hash(distanceToCurrentLocation),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(pid));

  @JsonKey(ignore: true)
  @override
  _$LocationStateCopyWith<_LocationState> get copyWith =>
      __$LocationStateCopyWithImpl<_LocationState>(this, _$identity);
}

abstract class _LocationState extends LocationState {
  factory _LocationState(
      {required String name,
      required LocationInfo locationInfo,
      required TestCenter testCenter,
      bool selected,
      double? distanceToCurrentLocation,
      LocationInfoFetchingStatus status,
      Object? error,
      DateTime? lastUpdated,
      int? pid}) = _$_LocationState;
  _LocationState._() : super._();

  @override
  String get name;
  @override
  LocationInfo get locationInfo;
  @override
  TestCenter get testCenter;
  @override
  bool get selected;
  @override
  double? get distanceToCurrentLocation;
  @override
  LocationInfoFetchingStatus get status;
  @override
  Object? get error;
  @override
  DateTime? get lastUpdated;
  @override
  int? get pid;
  @override
  @JsonKey(ignore: true)
  _$LocationStateCopyWith<_LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}
