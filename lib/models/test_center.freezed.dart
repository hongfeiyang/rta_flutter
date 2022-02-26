// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'test_center.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TestCenter _$TestCenterFromJson(Map<String, dynamic> json) {
  return _TestCenter.fromJson(json);
}

/// @nodoc
class _$TestCenterTearOff {
  const _$TestCenterTearOff();

  _TestCenter call(
      {required int id,
      required String name,
      required double latitude,
      required double longitude,
      double? distance,
      @JsonKey(name: 'dist_class') String? distClass}) {
    return _TestCenter(
      id: id,
      name: name,
      latitude: latitude,
      longitude: longitude,
      distance: distance,
      distClass: distClass,
    );
  }

  TestCenter fromJson(Map<String, Object?> json) {
    return TestCenter.fromJson(json);
  }
}

/// @nodoc
const $TestCenter = _$TestCenterTearOff();

/// @nodoc
mixin _$TestCenter {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  @JsonKey(name: 'dist_class')
  String? get distClass => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestCenterCopyWith<TestCenter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestCenterCopyWith<$Res> {
  factory $TestCenterCopyWith(
          TestCenter value, $Res Function(TestCenter) then) =
      _$TestCenterCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      double latitude,
      double longitude,
      double? distance,
      @JsonKey(name: 'dist_class') String? distClass});
}

/// @nodoc
class _$TestCenterCopyWithImpl<$Res> implements $TestCenterCopyWith<$Res> {
  _$TestCenterCopyWithImpl(this._value, this._then);

  final TestCenter _value;
  // ignore: unused_field
  final $Res Function(TestCenter) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? distance = freezed,
    Object? distClass = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      distClass: distClass == freezed
          ? _value.distClass
          : distClass // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TestCenterCopyWith<$Res> implements $TestCenterCopyWith<$Res> {
  factory _$TestCenterCopyWith(
          _TestCenter value, $Res Function(_TestCenter) then) =
      __$TestCenterCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      double latitude,
      double longitude,
      double? distance,
      @JsonKey(name: 'dist_class') String? distClass});
}

/// @nodoc
class __$TestCenterCopyWithImpl<$Res> extends _$TestCenterCopyWithImpl<$Res>
    implements _$TestCenterCopyWith<$Res> {
  __$TestCenterCopyWithImpl(
      _TestCenter _value, $Res Function(_TestCenter) _then)
      : super(_value, (v) => _then(v as _TestCenter));

  @override
  _TestCenter get _value => super._value as _TestCenter;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? distance = freezed,
    Object? distClass = freezed,
  }) {
    return _then(_TestCenter(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      distClass: distClass == freezed
          ? _value.distClass
          : distClass // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TestCenter extends _TestCenter {
  const _$_TestCenter(
      {required this.id,
      required this.name,
      required this.latitude,
      required this.longitude,
      this.distance,
      @JsonKey(name: 'dist_class') this.distClass})
      : super._();

  factory _$_TestCenter.fromJson(Map<String, dynamic> json) =>
      _$$_TestCenterFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final double? distance;
  @override
  @JsonKey(name: 'dist_class')
  final String? distClass;

  @override
  String toString() {
    return 'TestCenter(id: $id, name: $name, latitude: $latitude, longitude: $longitude, distance: $distance, distClass: $distClass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TestCenter &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.distance, distance) &&
            const DeepCollectionEquality().equals(other.distClass, distClass));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(distance),
      const DeepCollectionEquality().hash(distClass));

  @JsonKey(ignore: true)
  @override
  _$TestCenterCopyWith<_TestCenter> get copyWith =>
      __$TestCenterCopyWithImpl<_TestCenter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestCenterToJson(this);
  }
}

abstract class _TestCenter extends TestCenter {
  const factory _TestCenter(
      {required int id,
      required String name,
      required double latitude,
      required double longitude,
      double? distance,
      @JsonKey(name: 'dist_class') String? distClass}) = _$_TestCenter;
  const _TestCenter._() : super._();

  factory _TestCenter.fromJson(Map<String, dynamic> json) =
      _$_TestCenter.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  double? get distance;
  @override
  @JsonKey(name: 'dist_class')
  String? get distClass;
  @override
  @JsonKey(ignore: true)
  _$TestCenterCopyWith<_TestCenter> get copyWith =>
      throw _privateConstructorUsedError;
}
