// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_coordinates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationCoordinatesTearOff {
  const _$LocationCoordinatesTearOff();

  _LocationCoordinates call(
      {required double latitude, required double longitude}) {
    return _LocationCoordinates(
      latitude: latitude,
      longitude: longitude,
    );
  }
}

/// @nodoc
const $LocationCoordinates = _$LocationCoordinatesTearOff();

/// @nodoc
mixin _$LocationCoordinates {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationCoordinatesCopyWith<LocationCoordinates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCoordinatesCopyWith<$Res> {
  factory $LocationCoordinatesCopyWith(
          LocationCoordinates value, $Res Function(LocationCoordinates) then) =
      _$LocationCoordinatesCopyWithImpl<$Res>;
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$LocationCoordinatesCopyWithImpl<$Res>
    implements $LocationCoordinatesCopyWith<$Res> {
  _$LocationCoordinatesCopyWithImpl(this._value, this._then);

  final LocationCoordinates _value;
  // ignore: unused_field
  final $Res Function(LocationCoordinates) _then;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$LocationCoordinatesCopyWith<$Res>
    implements $LocationCoordinatesCopyWith<$Res> {
  factory _$LocationCoordinatesCopyWith(_LocationCoordinates value,
          $Res Function(_LocationCoordinates) then) =
      __$LocationCoordinatesCopyWithImpl<$Res>;
  @override
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$LocationCoordinatesCopyWithImpl<$Res>
    extends _$LocationCoordinatesCopyWithImpl<$Res>
    implements _$LocationCoordinatesCopyWith<$Res> {
  __$LocationCoordinatesCopyWithImpl(
      _LocationCoordinates _value, $Res Function(_LocationCoordinates) _then)
      : super(_value, (v) => _then(v as _LocationCoordinates));

  @override
  _LocationCoordinates get _value => super._value as _LocationCoordinates;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_LocationCoordinates(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_LocationCoordinates extends _LocationCoordinates {
  const _$_LocationCoordinates(
      {required this.latitude, required this.longitude})
      : super._();

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'LocationCoordinates(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationCoordinates &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude));

  @JsonKey(ignore: true)
  @override
  _$LocationCoordinatesCopyWith<_LocationCoordinates> get copyWith =>
      __$LocationCoordinatesCopyWithImpl<_LocationCoordinates>(
          this, _$identity);
}

abstract class _LocationCoordinates extends LocationCoordinates {
  const factory _LocationCoordinates(
      {required double latitude,
      required double longitude}) = _$_LocationCoordinates;
  const _LocationCoordinates._() : super._();

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$LocationCoordinatesCopyWith<_LocationCoordinates> get copyWith =>
      throw _privateConstructorUsedError;
}
