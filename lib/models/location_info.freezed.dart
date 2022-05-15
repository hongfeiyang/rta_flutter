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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationInfo _$LocationInfoFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

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
abstract class _$$_LocationCopyWith<$Res>
    implements $LocationInfoCopyWith<$Res> {
  factory _$$_LocationCopyWith(
          _$_Location value, $Res Function(_$_Location) then) =
      __$$_LocationCopyWithImpl<$Res>;
  @override
  $Res call({String location, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_LocationCopyWithImpl<$Res> extends _$LocationInfoCopyWithImpl<$Res>
    implements _$$_LocationCopyWith<$Res> {
  __$$_LocationCopyWithImpl(
      _$_Location _value, $Res Function(_$_Location) _then)
      : super(_value, (v) => _then(v as _$_Location));

  @override
  _$_Location get _value => super._value as _$_Location;

  @override
  $Res call({
    Object? location = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_Location(
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
            other is _$_Location &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      __$$_LocationCopyWithImpl<_$_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationToJson(this);
  }
}

abstract class _Location implements LocationInfo {
  const factory _Location(
      {required final String location, final Result? result}) = _$_Location;

  factory _Location.fromJson(Map<String, dynamic> json) = _$_Location.fromJson;

  @override
  String get location => throw _privateConstructorUsedError;
  @override
  Result? get result => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

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
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  $Res call({Ajaxresult ajaxresult});

  @override
  $AjaxresultCopyWith<$Res> get ajaxresult;
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res> extends _$ResultCopyWithImpl<$Res>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, (v) => _then(v as _$_Result));

  @override
  _$_Result get _value => super._value as _$_Result;

  @override
  $Res call({
    Object? ajaxresult = freezed,
  }) {
    return _then(_$_Result(
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
            other is _$_Result &&
            const DeepCollectionEquality()
                .equals(other.ajaxresult, ajaxresult));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(ajaxresult));

  @JsonKey(ignore: true)
  @override
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(this);
  }
}

abstract class _Result implements Result {
  const factory _Result({required final Ajaxresult ajaxresult}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  Ajaxresult get ajaxresult => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

Ajaxresult _$AjaxresultFromJson(Map<String, dynamic> json) {
  return _Ajaxresult.fromJson(json);
}

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
abstract class _$$_AjaxresultCopyWith<$Res>
    implements $AjaxresultCopyWith<$Res> {
  factory _$$_AjaxresultCopyWith(
          _$_Ajaxresult value, $Res Function(_$_Ajaxresult) then) =
      __$$_AjaxresultCopyWithImpl<$Res>;
  @override
  $Res call({Slots? slots});

  @override
  $SlotsCopyWith<$Res>? get slots;
}

/// @nodoc
class __$$_AjaxresultCopyWithImpl<$Res> extends _$AjaxresultCopyWithImpl<$Res>
    implements _$$_AjaxresultCopyWith<$Res> {
  __$$_AjaxresultCopyWithImpl(
      _$_Ajaxresult _value, $Res Function(_$_Ajaxresult) _then)
      : super(_value, (v) => _then(v as _$_Ajaxresult));

  @override
  _$_Ajaxresult get _value => super._value as _$_Ajaxresult;

  @override
  $Res call({
    Object? slots = freezed,
  }) {
    return _then(_$_Ajaxresult(
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
            other is _$_Ajaxresult &&
            const DeepCollectionEquality().equals(other.slots, slots));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(slots));

  @JsonKey(ignore: true)
  @override
  _$$_AjaxresultCopyWith<_$_Ajaxresult> get copyWith =>
      __$$_AjaxresultCopyWithImpl<_$_Ajaxresult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AjaxresultToJson(this);
  }
}

abstract class _Ajaxresult implements Ajaxresult {
  const factory _Ajaxresult({final Slots? slots}) = _$_Ajaxresult;

  factory _Ajaxresult.fromJson(Map<String, dynamic> json) =
      _$_Ajaxresult.fromJson;

  @override
  Slots? get slots => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AjaxresultCopyWith<_$_Ajaxresult> get copyWith =>
      throw _privateConstructorUsedError;
}

Slots _$SlotsFromJson(Map<String, dynamic> json) {
  return _Slots.fromJson(json);
}

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
abstract class _$$_SlotsCopyWith<$Res> implements $SlotsCopyWith<$Res> {
  factory _$$_SlotsCopyWith(_$_Slots value, $Res Function(_$_Slots) then) =
      __$$_SlotsCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ListTimeSlot> listTimeSlot,
      @CustomDateTimeConverter() DateTime? nextAvailableDate});
}

/// @nodoc
class __$$_SlotsCopyWithImpl<$Res> extends _$SlotsCopyWithImpl<$Res>
    implements _$$_SlotsCopyWith<$Res> {
  __$$_SlotsCopyWithImpl(_$_Slots _value, $Res Function(_$_Slots) _then)
      : super(_value, (v) => _then(v as _$_Slots));

  @override
  _$_Slots get _value => super._value as _$_Slots;

  @override
  $Res call({
    Object? listTimeSlot = freezed,
    Object? nextAvailableDate = freezed,
  }) {
    return _then(_$_Slots(
      listTimeSlot: listTimeSlot == freezed
          ? _value._listTimeSlot
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
      {final List<ListTimeSlot> listTimeSlot = const [],
      @CustomDateTimeConverter() this.nextAvailableDate})
      : _listTimeSlot = listTimeSlot;

  factory _$_Slots.fromJson(Map<String, dynamic> json) =>
      _$$_SlotsFromJson(json);

  final List<ListTimeSlot> _listTimeSlot;
  @override
  @JsonKey()
  List<ListTimeSlot> get listTimeSlot {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listTimeSlot);
  }

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
            other is _$_Slots &&
            const DeepCollectionEquality()
                .equals(other._listTimeSlot, _listTimeSlot) &&
            const DeepCollectionEquality()
                .equals(other.nextAvailableDate, nextAvailableDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_listTimeSlot),
      const DeepCollectionEquality().hash(nextAvailableDate));

  @JsonKey(ignore: true)
  @override
  _$$_SlotsCopyWith<_$_Slots> get copyWith =>
      __$$_SlotsCopyWithImpl<_$_Slots>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SlotsToJson(this);
  }
}

abstract class _Slots implements Slots {
  const factory _Slots(
      {final List<ListTimeSlot> listTimeSlot,
      @CustomDateTimeConverter() final DateTime? nextAvailableDate}) = _$_Slots;

  factory _Slots.fromJson(Map<String, dynamic> json) = _$_Slots.fromJson;

  @override
  List<ListTimeSlot> get listTimeSlot => throw _privateConstructorUsedError;
  @override
  @CustomDateTimeConverter()
  DateTime? get nextAvailableDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SlotsCopyWith<_$_Slots> get copyWith =>
      throw _privateConstructorUsedError;
}

ListTimeSlot _$ListTimeSlotFromJson(Map<String, dynamic> json) {
  return _ListTimeSlot.fromJson(json);
}

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
abstract class _$$_ListTimeSlotCopyWith<$Res>
    implements $ListTimeSlotCopyWith<$Res> {
  factory _$$_ListTimeSlotCopyWith(
          _$_ListTimeSlot value, $Res Function(_$_ListTimeSlot) then) =
      __$$_ListTimeSlotCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool availability,
      int? slotNumber,
      @CustomDateTimeConverter() DateTime? startTime});
}

/// @nodoc
class __$$_ListTimeSlotCopyWithImpl<$Res>
    extends _$ListTimeSlotCopyWithImpl<$Res>
    implements _$$_ListTimeSlotCopyWith<$Res> {
  __$$_ListTimeSlotCopyWithImpl(
      _$_ListTimeSlot _value, $Res Function(_$_ListTimeSlot) _then)
      : super(_value, (v) => _then(v as _$_ListTimeSlot));

  @override
  _$_ListTimeSlot get _value => super._value as _$_ListTimeSlot;

  @override
  $Res call({
    Object? availability = freezed,
    Object? slotNumber = freezed,
    Object? startTime = freezed,
  }) {
    return _then(_$_ListTimeSlot(
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
            other is _$_ListTimeSlot &&
            const DeepCollectionEquality()
                .equals(other.availability, availability) &&
            const DeepCollectionEquality()
                .equals(other.slotNumber, slotNumber) &&
            const DeepCollectionEquality().equals(other.startTime, startTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(availability),
      const DeepCollectionEquality().hash(slotNumber),
      const DeepCollectionEquality().hash(startTime));

  @JsonKey(ignore: true)
  @override
  _$$_ListTimeSlotCopyWith<_$_ListTimeSlot> get copyWith =>
      __$$_ListTimeSlotCopyWithImpl<_$_ListTimeSlot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListTimeSlotToJson(this);
  }
}

abstract class _ListTimeSlot implements ListTimeSlot {
  const factory _ListTimeSlot(
      {required final bool availability,
      final int? slotNumber,
      @CustomDateTimeConverter() final DateTime? startTime}) = _$_ListTimeSlot;

  factory _ListTimeSlot.fromJson(Map<String, dynamic> json) =
      _$_ListTimeSlot.fromJson;

  @override
  bool get availability => throw _privateConstructorUsedError;
  @override
  int? get slotNumber => throw _privateConstructorUsedError;
  @override
  @CustomDateTimeConverter()
  DateTime? get startTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ListTimeSlotCopyWith<_$_ListTimeSlot> get copyWith =>
      throw _privateConstructorUsedError;
}
