// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationInfo _$LocationInfoFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
class _$LocationInfoTearOff {
  const _$LocationInfoTearOff();

  _Location call({required String location, Result? result}) {
    return _Location(
      location: location,
      result: result,
    );
  }

  LocationInfo fromJson(Map<String, Object?> json) {
    return LocationInfo.fromJson(json);
  }
}

/// @nodoc
const $LocationInfo = _$LocationInfoTearOff();

/// @nodoc
mixin _$LocationInfo {
  String get location => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationInfoCopyWith<LocationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationInfoCopyWith<$Res> {
  factory $LocationInfoCopyWith(
          LocationInfo value, $Res Function(LocationInfo) then) =
      _$LocationInfoCopyWithImpl<$Res>;
  $Res call({String location, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$LocationInfoCopyWithImpl<$Res> implements $LocationInfoCopyWith<$Res> {
  _$LocationInfoCopyWithImpl(this._value, this._then);

  final LocationInfo _value;
  // ignore: unused_field
  final $Res Function(LocationInfo) _then;

  @override
  $Res call({
    Object? location = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ));
  }

  @override
  $ResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$LocationCopyWith<$Res> implements $LocationInfoCopyWith<$Res> {
  factory _$LocationCopyWith(_Location value, $Res Function(_Location) then) =
      __$LocationCopyWithImpl<$Res>;
  @override
  $Res call({String location, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$LocationCopyWithImpl<$Res> extends _$LocationInfoCopyWithImpl<$Res>
    implements _$LocationCopyWith<$Res> {
  __$LocationCopyWithImpl(_Location _value, $Res Function(_Location) _then)
      : super(_value, (v) => _then(v as _Location));

  @override
  _Location get _value => super._value as _Location;

  @override
  $Res call({
    Object? location = freezed,
    Object? result = freezed,
  }) {
    return _then(_Location(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Location implements _Location {
  const _$_Location({required this.location, this.result});

  factory _$_Location.fromJson(Map<String, dynamic> json) =>
      _$$_LocationFromJson(json);

  @override
  final String location;
  @override
  final Result? result;

  @override
  String toString() {
    return 'LocationInfo(location: $location, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Location &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$LocationCopyWith<_Location> get copyWith =>
      __$LocationCopyWithImpl<_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationToJson(this);
  }
}

abstract class _Location implements LocationInfo {
  const factory _Location({required String location, Result? result}) =
      _$_Location;

  factory _Location.fromJson(Map<String, dynamic> json) = _$_Location.fromJson;

  @override
  String get location;
  @override
  Result? get result;
  @override
  @JsonKey(ignore: true)
  _$LocationCopyWith<_Location> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
class _$ResultTearOff {
  const _$ResultTearOff();

  _Result call({required Ajaxresult ajaxresult}) {
    return _Result(
      ajaxresult: ajaxresult,
    );
  }

  Result fromJson(Map<String, Object?> json) {
    return Result.fromJson(json);
  }
}

/// @nodoc
const $Result = _$ResultTearOff();

/// @nodoc
mixin _$Result {
  Ajaxresult get ajaxresult => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res>;
  $Res call({Ajaxresult ajaxresult});

  $AjaxresultCopyWith<$Res> get ajaxresult;
}

/// @nodoc
class _$ResultCopyWithImpl<$Res> implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result _value;
  // ignore: unused_field
  final $Res Function(Result) _then;

  @override
  $Res call({
    Object? ajaxresult = freezed,
  }) {
    return _then(_value.copyWith(
      ajaxresult: ajaxresult == freezed
          ? _value.ajaxresult
          : ajaxresult // ignore: cast_nullable_to_non_nullable
              as Ajaxresult,
    ));
  }

  @override
  $AjaxresultCopyWith<$Res> get ajaxresult {
    return $AjaxresultCopyWith<$Res>(_value.ajaxresult, (value) {
      return _then(_value.copyWith(ajaxresult: value));
    });
  }
}

/// @nodoc
abstract class _$ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$ResultCopyWith(_Result value, $Res Function(_Result) then) =
      __$ResultCopyWithImpl<$Res>;
  @override
  $Res call({Ajaxresult ajaxresult});

  @override
  $AjaxresultCopyWith<$Res> get ajaxresult;
}

/// @nodoc
class __$ResultCopyWithImpl<$Res> extends _$ResultCopyWithImpl<$Res>
    implements _$ResultCopyWith<$Res> {
  __$ResultCopyWithImpl(_Result _value, $Res Function(_Result) _then)
      : super(_value, (v) => _then(v as _Result));

  @override
  _Result get _value => super._value as _Result;

  @override
  $Res call({
    Object? ajaxresult = freezed,
  }) {
    return _then(_Result(
      ajaxresult: ajaxresult == freezed
          ? _value.ajaxresult
          : ajaxresult // ignore: cast_nullable_to_non_nullable
              as Ajaxresult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result({required this.ajaxresult});

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  final Ajaxresult ajaxresult;

  @override
  String toString() {
    return 'Result(ajaxresult: $ajaxresult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Result &&
            const DeepCollectionEquality()
                .equals(other.ajaxresult, ajaxresult));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(ajaxresult));

  @JsonKey(ignore: true)
  @override
  _$ResultCopyWith<_Result> get copyWith =>
      __$ResultCopyWithImpl<_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(this);
  }
}

abstract class _Result implements Result {
  const factory _Result({required Ajaxresult ajaxresult}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  Ajaxresult get ajaxresult;
  @override
  @JsonKey(ignore: true)
  _$ResultCopyWith<_Result> get copyWith => throw _privateConstructorUsedError;
}

Ajaxresult _$AjaxresultFromJson(Map<String, dynamic> json) {
  return _Ajaxresult.fromJson(json);
}

/// @nodoc
class _$AjaxresultTearOff {
  const _$AjaxresultTearOff();

  _Ajaxresult call({Slots? slots}) {
    return _Ajaxresult(
      slots: slots,
    );
  }

  Ajaxresult fromJson(Map<String, Object?> json) {
    return Ajaxresult.fromJson(json);
  }
}

/// @nodoc
const $Ajaxresult = _$AjaxresultTearOff();

/// @nodoc
mixin _$Ajaxresult {
  Slots? get slots => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AjaxresultCopyWith<Ajaxresult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AjaxresultCopyWith<$Res> {
  factory $AjaxresultCopyWith(
          Ajaxresult value, $Res Function(Ajaxresult) then) =
      _$AjaxresultCopyWithImpl<$Res>;
  $Res call({Slots? slots});

  $SlotsCopyWith<$Res>? get slots;
}

/// @nodoc
class _$AjaxresultCopyWithImpl<$Res> implements $AjaxresultCopyWith<$Res> {
  _$AjaxresultCopyWithImpl(this._value, this._then);

  final Ajaxresult _value;
  // ignore: unused_field
  final $Res Function(Ajaxresult) _then;

  @override
  $Res call({
    Object? slots = freezed,
  }) {
    return _then(_value.copyWith(
      slots: slots == freezed
          ? _value.slots
          : slots // ignore: cast_nullable_to_non_nullable
              as Slots?,
    ));
  }

  @override
  $SlotsCopyWith<$Res>? get slots {
    if (_value.slots == null) {
      return null;
    }

    return $SlotsCopyWith<$Res>(_value.slots!, (value) {
      return _then(_value.copyWith(slots: value));
    });
  }
}

/// @nodoc
abstract class _$AjaxresultCopyWith<$Res> implements $AjaxresultCopyWith<$Res> {
  factory _$AjaxresultCopyWith(
          _Ajaxresult value, $Res Function(_Ajaxresult) then) =
      __$AjaxresultCopyWithImpl<$Res>;
  @override
  $Res call({Slots? slots});

  @override
  $SlotsCopyWith<$Res>? get slots;
}

/// @nodoc
class __$AjaxresultCopyWithImpl<$Res> extends _$AjaxresultCopyWithImpl<$Res>
    implements _$AjaxresultCopyWith<$Res> {
  __$AjaxresultCopyWithImpl(
      _Ajaxresult _value, $Res Function(_Ajaxresult) _then)
      : super(_value, (v) => _then(v as _Ajaxresult));

  @override
  _Ajaxresult get _value => super._value as _Ajaxresult;

  @override
  $Res call({
    Object? slots = freezed,
  }) {
    return _then(_Ajaxresult(
      slots: slots == freezed
          ? _value.slots
          : slots // ignore: cast_nullable_to_non_nullable
              as Slots?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ajaxresult implements _Ajaxresult {
  const _$_Ajaxresult({this.slots});

  factory _$_Ajaxresult.fromJson(Map<String, dynamic> json) =>
      _$$_AjaxresultFromJson(json);

  @override
  final Slots? slots;

  @override
  String toString() {
    return 'Ajaxresult(slots: $slots)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Ajaxresult &&
            const DeepCollectionEquality().equals(other.slots, slots));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(slots));

  @JsonKey(ignore: true)
  @override
  _$AjaxresultCopyWith<_Ajaxresult> get copyWith =>
      __$AjaxresultCopyWithImpl<_Ajaxresult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AjaxresultToJson(this);
  }
}

abstract class _Ajaxresult implements Ajaxresult {
  const factory _Ajaxresult({Slots? slots}) = _$_Ajaxresult;

  factory _Ajaxresult.fromJson(Map<String, dynamic> json) =
      _$_Ajaxresult.fromJson;

  @override
  Slots? get slots;
  @override
  @JsonKey(ignore: true)
  _$AjaxresultCopyWith<_Ajaxresult> get copyWith =>
      throw _privateConstructorUsedError;
}

Slots _$SlotsFromJson(Map<String, dynamic> json) {
  return _Slots.fromJson(json);
}

/// @nodoc
class _$SlotsTearOff {
  const _$SlotsTearOff();

  _Slots call(
      {List<ListTimeSlot> listTimeSlot = const [],
      @CustomDateTimeConverter() DateTime? nextAvailableDate}) {
    return _Slots(
      listTimeSlot: listTimeSlot,
      nextAvailableDate: nextAvailableDate,
    );
  }

  Slots fromJson(Map<String, Object?> json) {
    return Slots.fromJson(json);
  }
}

/// @nodoc
const $Slots = _$SlotsTearOff();

/// @nodoc
mixin _$Slots {
  List<ListTimeSlot> get listTimeSlot => throw _privateConstructorUsedError;
  @CustomDateTimeConverter()
  DateTime? get nextAvailableDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SlotsCopyWith<Slots> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotsCopyWith<$Res> {
  factory $SlotsCopyWith(Slots value, $Res Function(Slots) then) =
      _$SlotsCopyWithImpl<$Res>;
  $Res call(
      {List<ListTimeSlot> listTimeSlot,
      @CustomDateTimeConverter() DateTime? nextAvailableDate});
}

/// @nodoc
class _$SlotsCopyWithImpl<$Res> implements $SlotsCopyWith<$Res> {
  _$SlotsCopyWithImpl(this._value, this._then);

  final Slots _value;
  // ignore: unused_field
  final $Res Function(Slots) _then;

  @override
  $Res call({
    Object? listTimeSlot = freezed,
    Object? nextAvailableDate = freezed,
  }) {
    return _then(_value.copyWith(
      listTimeSlot: listTimeSlot == freezed
          ? _value.listTimeSlot
          : listTimeSlot // ignore: cast_nullable_to_non_nullable
              as List<ListTimeSlot>,
      nextAvailableDate: nextAvailableDate == freezed
          ? _value.nextAvailableDate
          : nextAvailableDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$SlotsCopyWith<$Res> implements $SlotsCopyWith<$Res> {
  factory _$SlotsCopyWith(_Slots value, $Res Function(_Slots) then) =
      __$SlotsCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ListTimeSlot> listTimeSlot,
      @CustomDateTimeConverter() DateTime? nextAvailableDate});
}

/// @nodoc
class __$SlotsCopyWithImpl<$Res> extends _$SlotsCopyWithImpl<$Res>
    implements _$SlotsCopyWith<$Res> {
  __$SlotsCopyWithImpl(_Slots _value, $Res Function(_Slots) _then)
      : super(_value, (v) => _then(v as _Slots));

  @override
  _Slots get _value => super._value as _Slots;

  @override
  $Res call({
    Object? listTimeSlot = freezed,
    Object? nextAvailableDate = freezed,
  }) {
    return _then(_Slots(
      listTimeSlot: listTimeSlot == freezed
          ? _value.listTimeSlot
          : listTimeSlot // ignore: cast_nullable_to_non_nullable
              as List<ListTimeSlot>,
      nextAvailableDate: nextAvailableDate == freezed
          ? _value.nextAvailableDate
          : nextAvailableDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Slots implements _Slots {
  const _$_Slots(
      {this.listTimeSlot = const [],
      @CustomDateTimeConverter() this.nextAvailableDate});

  factory _$_Slots.fromJson(Map<String, dynamic> json) =>
      _$$_SlotsFromJson(json);

  @JsonKey()
  @override
  final List<ListTimeSlot> listTimeSlot;
  @override
  @CustomDateTimeConverter()
  final DateTime? nextAvailableDate;

  @override
  String toString() {
    return 'Slots(listTimeSlot: $listTimeSlot, nextAvailableDate: $nextAvailableDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Slots &&
            const DeepCollectionEquality()
                .equals(other.listTimeSlot, listTimeSlot) &&
            const DeepCollectionEquality()
                .equals(other.nextAvailableDate, nextAvailableDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(listTimeSlot),
      const DeepCollectionEquality().hash(nextAvailableDate));

  @JsonKey(ignore: true)
  @override
  _$SlotsCopyWith<_Slots> get copyWith =>
      __$SlotsCopyWithImpl<_Slots>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SlotsToJson(this);
  }
}

abstract class _Slots implements Slots {
  const factory _Slots(
      {List<ListTimeSlot> listTimeSlot,
      @CustomDateTimeConverter() DateTime? nextAvailableDate}) = _$_Slots;

  factory _Slots.fromJson(Map<String, dynamic> json) = _$_Slots.fromJson;

  @override
  List<ListTimeSlot> get listTimeSlot;
  @override
  @CustomDateTimeConverter()
  DateTime? get nextAvailableDate;
  @override
  @JsonKey(ignore: true)
  _$SlotsCopyWith<_Slots> get copyWith => throw _privateConstructorUsedError;
}

ListTimeSlot _$ListTimeSlotFromJson(Map<String, dynamic> json) {
  return _ListTimeSlot.fromJson(json);
}

/// @nodoc
class _$ListTimeSlotTearOff {
  const _$ListTimeSlotTearOff();

  _ListTimeSlot call(
      {required bool availability,
      int? slotNumber,
      @CustomDateTimeConverter() DateTime? startTime}) {
    return _ListTimeSlot(
      availability: availability,
      slotNumber: slotNumber,
      startTime: startTime,
    );
  }

  ListTimeSlot fromJson(Map<String, Object?> json) {
    return ListTimeSlot.fromJson(json);
  }
}

/// @nodoc
const $ListTimeSlot = _$ListTimeSlotTearOff();

/// @nodoc
mixin _$ListTimeSlot {
  bool get availability => throw _privateConstructorUsedError;
  int? get slotNumber => throw _privateConstructorUsedError;
  @CustomDateTimeConverter()
  DateTime? get startTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListTimeSlotCopyWith<ListTimeSlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListTimeSlotCopyWith<$Res> {
  factory $ListTimeSlotCopyWith(
          ListTimeSlot value, $Res Function(ListTimeSlot) then) =
      _$ListTimeSlotCopyWithImpl<$Res>;
  $Res call(
      {bool availability,
      int? slotNumber,
      @CustomDateTimeConverter() DateTime? startTime});
}

/// @nodoc
class _$ListTimeSlotCopyWithImpl<$Res> implements $ListTimeSlotCopyWith<$Res> {
  _$ListTimeSlotCopyWithImpl(this._value, this._then);

  final ListTimeSlot _value;
  // ignore: unused_field
  final $Res Function(ListTimeSlot) _then;

  @override
  $Res call({
    Object? availability = freezed,
    Object? slotNumber = freezed,
    Object? startTime = freezed,
  }) {
    return _then(_value.copyWith(
      availability: availability == freezed
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as bool,
      slotNumber: slotNumber == freezed
          ? _value.slotNumber
          : slotNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$ListTimeSlotCopyWith<$Res>
    implements $ListTimeSlotCopyWith<$Res> {
  factory _$ListTimeSlotCopyWith(
          _ListTimeSlot value, $Res Function(_ListTimeSlot) then) =
      __$ListTimeSlotCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool availability,
      int? slotNumber,
      @CustomDateTimeConverter() DateTime? startTime});
}

/// @nodoc
class __$ListTimeSlotCopyWithImpl<$Res> extends _$ListTimeSlotCopyWithImpl<$Res>
    implements _$ListTimeSlotCopyWith<$Res> {
  __$ListTimeSlotCopyWithImpl(
      _ListTimeSlot _value, $Res Function(_ListTimeSlot) _then)
      : super(_value, (v) => _then(v as _ListTimeSlot));

  @override
  _ListTimeSlot get _value => super._value as _ListTimeSlot;

  @override
  $Res call({
    Object? availability = freezed,
    Object? slotNumber = freezed,
    Object? startTime = freezed,
  }) {
    return _then(_ListTimeSlot(
      availability: availability == freezed
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as bool,
      slotNumber: slotNumber == freezed
          ? _value.slotNumber
          : slotNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListTimeSlot implements _ListTimeSlot {
  const _$_ListTimeSlot(
      {required this.availability,
      this.slotNumber,
      @CustomDateTimeConverter() this.startTime});

  factory _$_ListTimeSlot.fromJson(Map<String, dynamic> json) =>
      _$$_ListTimeSlotFromJson(json);

  @override
  final bool availability;
  @override
  final int? slotNumber;
  @override
  @CustomDateTimeConverter()
  final DateTime? startTime;

  @override
  String toString() {
    return 'ListTimeSlot(availability: $availability, slotNumber: $slotNumber, startTime: $startTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListTimeSlot &&
            const DeepCollectionEquality()
                .equals(other.availability, availability) &&
            const DeepCollectionEquality()
                .equals(other.slotNumber, slotNumber) &&
            const DeepCollectionEquality().equals(other.startTime, startTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(availability),
      const DeepCollectionEquality().hash(slotNumber),
      const DeepCollectionEquality().hash(startTime));

  @JsonKey(ignore: true)
  @override
  _$ListTimeSlotCopyWith<_ListTimeSlot> get copyWith =>
      __$ListTimeSlotCopyWithImpl<_ListTimeSlot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListTimeSlotToJson(this);
  }
}

abstract class _ListTimeSlot implements ListTimeSlot {
  const factory _ListTimeSlot(
      {required bool availability,
      int? slotNumber,
      @CustomDateTimeConverter() DateTime? startTime}) = _$_ListTimeSlot;

  factory _ListTimeSlot.fromJson(Map<String, dynamic> json) =
      _$_ListTimeSlot.fromJson;

  @override
  bool get availability;
  @override
  int? get slotNumber;
  @override
  @CustomDateTimeConverter()
  DateTime? get startTime;
  @override
  @JsonKey(ignore: true)
  _$ListTimeSlotCopyWith<_ListTimeSlot> get copyWith =>
      throw _privateConstructorUsedError;
}
