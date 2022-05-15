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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Settings _$SettingsFromJson(Map<String, dynamic> json) {
  return _Settings.fromJson(json);
}

/// @nodoc
mixin _$Settings {
  int get autoUpdateIntervalInMinutes => throw _privateConstructorUsedError;
  int get numConcurrentProcess => throw _privateConstructorUsedError;
  bool get enableAutoUpdate => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'python3_executable')
  String? get python3ExePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'have_booking')
  bool get haveBooking => throw _privateConstructorUsedError;
  @JsonKey(name: 'headless')
  bool get headless => throw _privateConstructorUsedError;
  @JsonKey(name: 'wait_timer')
  int get waitTimer => throw _privateConstructorUsedError;
  @JsonKey(name: 'main_category')
  dynamic get mainCategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_category')
  dynamic get subCategory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
      bool enableAutoUpdate,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'python3_executable') String? python3ExePath,
      @JsonKey(name: 'have_booking') bool haveBooking,
      @JsonKey(name: 'headless') bool headless,
      @JsonKey(name: 'wait_timer') int waitTimer,
      @JsonKey(name: 'main_category') dynamic mainCategory,
      @JsonKey(name: 'sub_category') dynamic subCategory});
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
    Object? username = freezed,
    Object? password = freezed,
    Object? python3ExePath = freezed,
    Object? haveBooking = freezed,
    Object? headless = freezed,
    Object? waitTimer = freezed,
    Object? mainCategory = freezed,
    Object? subCategory = freezed,
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
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      python3ExePath: python3ExePath == freezed
          ? _value.python3ExePath
          : python3ExePath // ignore: cast_nullable_to_non_nullable
              as String?,
      haveBooking: haveBooking == freezed
          ? _value.haveBooking
          : haveBooking // ignore: cast_nullable_to_non_nullable
              as bool,
      headless: headless == freezed
          ? _value.headless
          : headless // ignore: cast_nullable_to_non_nullable
              as bool,
      waitTimer: waitTimer == freezed
          ? _value.waitTimer
          : waitTimer // ignore: cast_nullable_to_non_nullable
              as int,
      mainCategory: mainCategory == freezed
          ? _value.mainCategory
          : mainCategory // ignore: cast_nullable_to_non_nullable
              as dynamic,
      subCategory: subCategory == freezed
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$_SettingsCopyWith<$Res> implements $SettingsCopyWith<$Res> {
  factory _$$_SettingsCopyWith(
          _$_Settings value, $Res Function(_$_Settings) then) =
      __$$_SettingsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int autoUpdateIntervalInMinutes,
      int numConcurrentProcess,
      bool enableAutoUpdate,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'python3_executable') String? python3ExePath,
      @JsonKey(name: 'have_booking') bool haveBooking,
      @JsonKey(name: 'headless') bool headless,
      @JsonKey(name: 'wait_timer') int waitTimer,
      @JsonKey(name: 'main_category') dynamic mainCategory,
      @JsonKey(name: 'sub_category') dynamic subCategory});
}

/// @nodoc
class __$$_SettingsCopyWithImpl<$Res> extends _$SettingsCopyWithImpl<$Res>
    implements _$$_SettingsCopyWith<$Res> {
  __$$_SettingsCopyWithImpl(
      _$_Settings _value, $Res Function(_$_Settings) _then)
      : super(_value, (v) => _then(v as _$_Settings));

  @override
  _$_Settings get _value => super._value as _$_Settings;

  @override
  $Res call({
    Object? autoUpdateIntervalInMinutes = freezed,
    Object? numConcurrentProcess = freezed,
    Object? enableAutoUpdate = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? python3ExePath = freezed,
    Object? haveBooking = freezed,
    Object? headless = freezed,
    Object? waitTimer = freezed,
    Object? mainCategory = freezed,
    Object? subCategory = freezed,
  }) {
    return _then(_$_Settings(
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
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      python3ExePath: python3ExePath == freezed
          ? _value.python3ExePath
          : python3ExePath // ignore: cast_nullable_to_non_nullable
              as String?,
      haveBooking: haveBooking == freezed
          ? _value.haveBooking
          : haveBooking // ignore: cast_nullable_to_non_nullable
              as bool,
      headless: headless == freezed
          ? _value.headless
          : headless // ignore: cast_nullable_to_non_nullable
              as bool,
      waitTimer: waitTimer == freezed
          ? _value.waitTimer
          : waitTimer // ignore: cast_nullable_to_non_nullable
              as int,
      mainCategory:
          mainCategory == freezed ? _value.mainCategory : mainCategory,
      subCategory: subCategory == freezed ? _value.subCategory : subCategory,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Settings implements _Settings {
  const _$_Settings(
      {this.autoUpdateIntervalInMinutes = 15,
      this.numConcurrentProcess = 1,
      this.enableAutoUpdate = false,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'password') this.password,
      @JsonKey(name: 'python3_executable') this.python3ExePath = 'python3',
      @JsonKey(name: 'have_booking') this.haveBooking = false,
      @JsonKey(name: 'headless') this.headless = true,
      @JsonKey(name: 'wait_timer') this.waitTimer = 2,
      @JsonKey(name: 'main_category') this.mainCategory = 'Car',
      @JsonKey(name: 'sub_category') this.subCategory = 'DT'});

  factory _$_Settings.fromJson(Map<String, dynamic> json) =>
      _$$_SettingsFromJson(json);

  @override
  @JsonKey()
  final int autoUpdateIntervalInMinutes;
  @override
  @JsonKey()
  final int numConcurrentProcess;
  @override
  @JsonKey()
  final bool enableAutoUpdate;
  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'password')
  final String? password;
  @override
  @JsonKey(name: 'python3_executable')
  final String? python3ExePath;
  @override
  @JsonKey(name: 'have_booking')
  final bool haveBooking;
  @override
  @JsonKey(name: 'headless')
  final bool headless;
  @override
  @JsonKey(name: 'wait_timer')
  final int waitTimer;
  @override
  @JsonKey(name: 'main_category')
  final dynamic mainCategory;
  @override
  @JsonKey(name: 'sub_category')
  final dynamic subCategory;

  @override
  String toString() {
    return 'Settings(autoUpdateIntervalInMinutes: $autoUpdateIntervalInMinutes, numConcurrentProcess: $numConcurrentProcess, enableAutoUpdate: $enableAutoUpdate, username: $username, password: $password, python3ExePath: $python3ExePath, haveBooking: $haveBooking, headless: $headless, waitTimer: $waitTimer, mainCategory: $mainCategory, subCategory: $subCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Settings &&
            const DeepCollectionEquality().equals(
                other.autoUpdateIntervalInMinutes,
                autoUpdateIntervalInMinutes) &&
            const DeepCollectionEquality()
                .equals(other.numConcurrentProcess, numConcurrentProcess) &&
            const DeepCollectionEquality()
                .equals(other.enableAutoUpdate, enableAutoUpdate) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.python3ExePath, python3ExePath) &&
            const DeepCollectionEquality()
                .equals(other.haveBooking, haveBooking) &&
            const DeepCollectionEquality().equals(other.headless, headless) &&
            const DeepCollectionEquality().equals(other.waitTimer, waitTimer) &&
            const DeepCollectionEquality()
                .equals(other.mainCategory, mainCategory) &&
            const DeepCollectionEquality()
                .equals(other.subCategory, subCategory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(autoUpdateIntervalInMinutes),
      const DeepCollectionEquality().hash(numConcurrentProcess),
      const DeepCollectionEquality().hash(enableAutoUpdate),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(python3ExePath),
      const DeepCollectionEquality().hash(haveBooking),
      const DeepCollectionEquality().hash(headless),
      const DeepCollectionEquality().hash(waitTimer),
      const DeepCollectionEquality().hash(mainCategory),
      const DeepCollectionEquality().hash(subCategory));

  @JsonKey(ignore: true)
  @override
  _$$_SettingsCopyWith<_$_Settings> get copyWith =>
      __$$_SettingsCopyWithImpl<_$_Settings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingsToJson(this);
  }
}

abstract class _Settings implements Settings {
  const factory _Settings(
      {final int autoUpdateIntervalInMinutes,
      final int numConcurrentProcess,
      final bool enableAutoUpdate,
      @JsonKey(name: 'username') final String? username,
      @JsonKey(name: 'password') final String? password,
      @JsonKey(name: 'python3_executable') final String? python3ExePath,
      @JsonKey(name: 'have_booking') final bool haveBooking,
      @JsonKey(name: 'headless') final bool headless,
      @JsonKey(name: 'wait_timer') final int waitTimer,
      @JsonKey(name: 'main_category') final dynamic mainCategory,
      @JsonKey(name: 'sub_category') final dynamic subCategory}) = _$_Settings;

  factory _Settings.fromJson(Map<String, dynamic> json) = _$_Settings.fromJson;

  @override
  int get autoUpdateIntervalInMinutes => throw _privateConstructorUsedError;
  @override
  int get numConcurrentProcess => throw _privateConstructorUsedError;
  @override
  bool get enableAutoUpdate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'python3_executable')
  String? get python3ExePath => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'have_booking')
  bool get haveBooking => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'headless')
  bool get headless => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'wait_timer')
  int get waitTimer => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'main_category')
  dynamic get mainCategory => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'sub_category')
  dynamic get subCategory => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsCopyWith<_$_Settings> get copyWith =>
      throw _privateConstructorUsedError;
}
