// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  InvalidEmail<T> invalidEmail<T>({required String failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  ShortPassword<T> shortPassword<T>({required String failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
    );
  }

  NamesUser<T> invalidNamesUser<T>({required String failedValue}) {
    return NamesUser<T>(
      failedValue: failedValue,
    );
  }

  Phone<T> invalidPhone<T>({required String failedValue}) {
    return Phone<T>(
      failedValue: failedValue,
    );
  }

  Height<T> invalidHeight<T>({required double failedValue}) {
    return Height<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) invalidNamesUser,
    required TResult Function(String failedValue) invalidPhone,
    required TResult Function(double failedValue) invalidHeight,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? invalidNamesUser,
    TResult Function(String failedValue)? invalidPhone,
    TResult Function(double failedValue)? invalidHeight,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? invalidNamesUser,
    TResult Function(String failedValue)? invalidPhone,
    TResult Function(double failedValue)? invalidHeight,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(NamesUser<T> value) invalidNamesUser,
    required TResult Function(Phone<T> value) invalidPhone,
    required TResult Function(Height<T> value) invalidHeight,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(NamesUser<T> value)? invalidNamesUser,
    TResult Function(Phone<T> value)? invalidPhone,
    TResult Function(Height<T> value)? invalidHeight,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(NamesUser<T> value)? invalidNamesUser,
    TResult Function(Phone<T> value)? invalidPhone,
    TResult Function(Height<T> value)? invalidHeight,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidEmail<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) invalidNamesUser,
    required TResult Function(String failedValue) invalidPhone,
    required TResult Function(double failedValue) invalidHeight,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? invalidNamesUser,
    TResult Function(String failedValue)? invalidPhone,
    TResult Function(double failedValue)? invalidHeight,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? invalidNamesUser,
    TResult Function(String failedValue)? invalidPhone,
    TResult Function(double failedValue)? invalidHeight,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(NamesUser<T> value) invalidNamesUser,
    required TResult Function(Phone<T> value) invalidPhone,
    required TResult Function(Height<T> value) invalidHeight,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(NamesUser<T> value)? invalidNamesUser,
    TResult Function(Phone<T> value)? invalidPhone,
    TResult Function(Height<T> value)? invalidHeight,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(NamesUser<T> value)? invalidNamesUser,
    TResult Function(Phone<T> value)? invalidPhone,
    TResult Function(Height<T> value)? invalidHeight,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required String failedValue}) = _$InvalidEmail<T>;

  String get failedValue;
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortPasswordCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(ShortPassword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShortPassword<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) invalidNamesUser,
    required TResult Function(String failedValue) invalidPhone,
    required TResult Function(double failedValue) invalidHeight,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? invalidNamesUser,
    TResult Function(String failedValue)? invalidPhone,
    TResult Function(double failedValue)? invalidHeight,
  }) {
    return shortPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? invalidNamesUser,
    TResult Function(String failedValue)? invalidPhone,
    TResult Function(double failedValue)? invalidHeight,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(NamesUser<T> value) invalidNamesUser,
    required TResult Function(Phone<T> value) invalidPhone,
    required TResult Function(Height<T> value) invalidHeight,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(NamesUser<T> value)? invalidNamesUser,
    TResult Function(Phone<T> value)? invalidPhone,
    TResult Function(Height<T> value)? invalidHeight,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(NamesUser<T> value)? invalidNamesUser,
    TResult Function(Phone<T> value)? invalidPhone,
    TResult Function(Height<T> value)? invalidHeight,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({required String failedValue}) =
      _$ShortPassword<T>;

  String get failedValue;
  @JsonKey(ignore: true)
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NamesUserCopyWith<T, $Res> {
  factory $NamesUserCopyWith(
          NamesUser<T> value, $Res Function(NamesUser<T>) then) =
      _$NamesUserCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$NamesUserCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NamesUserCopyWith<T, $Res> {
  _$NamesUserCopyWithImpl(
      NamesUser<T> _value, $Res Function(NamesUser<T>) _then)
      : super(_value, (v) => _then(v as NamesUser<T>));

  @override
  NamesUser<T> get _value => super._value as NamesUser<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(NamesUser<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NamesUser<T> implements NamesUser<T> {
  const _$NamesUser({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidNamesUser(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NamesUser<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $NamesUserCopyWith<T, NamesUser<T>> get copyWith =>
      _$NamesUserCopyWithImpl<T, NamesUser<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) invalidNamesUser,
    required TResult Function(String failedValue) invalidPhone,
    required TResult Function(double failedValue) invalidHeight,
  }) {
    return invalidNamesUser(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? invalidNamesUser,
    TResult Function(String failedValue)? invalidPhone,
    TResult Function(double failedValue)? invalidHeight,
  }) {
    return invalidNamesUser?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? invalidNamesUser,
    TResult Function(String failedValue)? invalidPhone,
    TResult Function(double failedValue)? invalidHeight,
    required TResult orElse(),
  }) {
    if (invalidNamesUser != null) {
      return invalidNamesUser(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(NamesUser<T> value) invalidNamesUser,
    required TResult Function(Phone<T> value) invalidPhone,
    required TResult Function(Height<T> value) invalidHeight,
  }) {
    return invalidNamesUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(NamesUser<T> value)? invalidNamesUser,
    TResult Function(Phone<T> value)? invalidPhone,
    TResult Function(Height<T> value)? invalidHeight,
  }) {
    return invalidNamesUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(NamesUser<T> value)? invalidNamesUser,
    TResult Function(Phone<T> value)? invalidPhone,
    TResult Function(Height<T> value)? invalidHeight,
    required TResult orElse(),
  }) {
    if (invalidNamesUser != null) {
      return invalidNamesUser(this);
    }
    return orElse();
  }
}

abstract class NamesUser<T> implements ValueFailure<T> {
  const factory NamesUser({required String failedValue}) = _$NamesUser<T>;

  String get failedValue;
  @JsonKey(ignore: true)
  $NamesUserCopyWith<T, NamesUser<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneCopyWith<T, $Res> {
  factory $PhoneCopyWith(Phone<T> value, $Res Function(Phone<T>) then) =
      _$PhoneCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$PhoneCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $PhoneCopyWith<T, $Res> {
  _$PhoneCopyWithImpl(Phone<T> _value, $Res Function(Phone<T>) _then)
      : super(_value, (v) => _then(v as Phone<T>));

  @override
  Phone<T> get _value => super._value as Phone<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(Phone<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Phone<T> implements Phone<T> {
  const _$Phone({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPhone(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Phone<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $PhoneCopyWith<T, Phone<T>> get copyWith =>
      _$PhoneCopyWithImpl<T, Phone<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) invalidNamesUser,
    required TResult Function(String failedValue) invalidPhone,
    required TResult Function(double failedValue) invalidHeight,
  }) {
    return invalidPhone(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? invalidNamesUser,
    TResult Function(String failedValue)? invalidPhone,
    TResult Function(double failedValue)? invalidHeight,
  }) {
    return invalidPhone?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? invalidNamesUser,
    TResult Function(String failedValue)? invalidPhone,
    TResult Function(double failedValue)? invalidHeight,
    required TResult orElse(),
  }) {
    if (invalidPhone != null) {
      return invalidPhone(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(NamesUser<T> value) invalidNamesUser,
    required TResult Function(Phone<T> value) invalidPhone,
    required TResult Function(Height<T> value) invalidHeight,
  }) {
    return invalidPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(NamesUser<T> value)? invalidNamesUser,
    TResult Function(Phone<T> value)? invalidPhone,
    TResult Function(Height<T> value)? invalidHeight,
  }) {
    return invalidPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(NamesUser<T> value)? invalidNamesUser,
    TResult Function(Phone<T> value)? invalidPhone,
    TResult Function(Height<T> value)? invalidHeight,
    required TResult orElse(),
  }) {
    if (invalidPhone != null) {
      return invalidPhone(this);
    }
    return orElse();
  }
}

abstract class Phone<T> implements ValueFailure<T> {
  const factory Phone({required String failedValue}) = _$Phone<T>;

  String get failedValue;
  @JsonKey(ignore: true)
  $PhoneCopyWith<T, Phone<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeightCopyWith<T, $Res> {
  factory $HeightCopyWith(Height<T> value, $Res Function(Height<T>) then) =
      _$HeightCopyWithImpl<T, $Res>;
  $Res call({double failedValue});
}

/// @nodoc
class _$HeightCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $HeightCopyWith<T, $Res> {
  _$HeightCopyWithImpl(Height<T> _value, $Res Function(Height<T>) _then)
      : super(_value, (v) => _then(v as Height<T>));

  @override
  Height<T> get _value => super._value as Height<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(Height<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$Height<T> implements Height<T> {
  const _$Height({required this.failedValue});

  @override
  final double failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidHeight(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Height<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $HeightCopyWith<T, Height<T>> get copyWith =>
      _$HeightCopyWithImpl<T, Height<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) invalidNamesUser,
    required TResult Function(String failedValue) invalidPhone,
    required TResult Function(double failedValue) invalidHeight,
  }) {
    return invalidHeight(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? invalidNamesUser,
    TResult Function(String failedValue)? invalidPhone,
    TResult Function(double failedValue)? invalidHeight,
  }) {
    return invalidHeight?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? invalidNamesUser,
    TResult Function(String failedValue)? invalidPhone,
    TResult Function(double failedValue)? invalidHeight,
    required TResult orElse(),
  }) {
    if (invalidHeight != null) {
      return invalidHeight(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(NamesUser<T> value) invalidNamesUser,
    required TResult Function(Phone<T> value) invalidPhone,
    required TResult Function(Height<T> value) invalidHeight,
  }) {
    return invalidHeight(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(NamesUser<T> value)? invalidNamesUser,
    TResult Function(Phone<T> value)? invalidPhone,
    TResult Function(Height<T> value)? invalidHeight,
  }) {
    return invalidHeight?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(NamesUser<T> value)? invalidNamesUser,
    TResult Function(Phone<T> value)? invalidPhone,
    TResult Function(Height<T> value)? invalidHeight,
    required TResult orElse(),
  }) {
    if (invalidHeight != null) {
      return invalidHeight(this);
    }
    return orElse();
  }
}

abstract class Height<T> implements ValueFailure<T> {
  const factory Height({required double failedValue}) = _$Height<T>;

  double get failedValue;
  @JsonKey(ignore: true)
  $HeightCopyWith<T, Height<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
