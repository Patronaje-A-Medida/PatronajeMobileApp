// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_client_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignUpClientEventTearOff {
  const _$SignUpClientEventTearOff();

  NewClient start() {
    return const NewClient();
  }

  NameChanged nameChanged(String name) {
    return NameChanged(
      name,
    );
  }

  LastNameChanged lastNameChanged(String lastName) {
    return LastNameChanged(
      lastName,
    );
  }

  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }

  PasswordChanged passwordChanged(String password) {
    return PasswordChanged(
      password,
    );
  }

  PhoneChanged phoneChanged(String phone) {
    return PhoneChanged(
      phone,
    );
  }

  HeightChanged heightChanged(double height) {
    return HeightChanged(
      height,
    );
  }

  SignUpButtonPressed signUpButtonPressed() {
    return const SignUpButtonPressed();
  }
}

/// @nodoc
const $SignUpClientEvent = _$SignUpClientEventTearOff();

/// @nodoc
mixin _$SignUpClientEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(String name) nameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(double height) heightChanged,
    required TResult Function() signUpButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(String name)? nameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(double height)? heightChanged,
    TResult Function()? signUpButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(String name)? nameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(double height)? heightChanged,
    TResult Function()? signUpButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewClient value) start,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(HeightChanged value) heightChanged,
    required TResult Function(SignUpButtonPressed value) signUpButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewClient value)? start,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(HeightChanged value)? heightChanged,
    TResult Function(SignUpButtonPressed value)? signUpButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewClient value)? start,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(HeightChanged value)? heightChanged,
    TResult Function(SignUpButtonPressed value)? signUpButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpClientEventCopyWith<$Res> {
  factory $SignUpClientEventCopyWith(
          SignUpClientEvent value, $Res Function(SignUpClientEvent) then) =
      _$SignUpClientEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpClientEventCopyWithImpl<$Res>
    implements $SignUpClientEventCopyWith<$Res> {
  _$SignUpClientEventCopyWithImpl(this._value, this._then);

  final SignUpClientEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpClientEvent) _then;
}

/// @nodoc
abstract class $NewClientCopyWith<$Res> {
  factory $NewClientCopyWith(NewClient value, $Res Function(NewClient) then) =
      _$NewClientCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewClientCopyWithImpl<$Res>
    extends _$SignUpClientEventCopyWithImpl<$Res>
    implements $NewClientCopyWith<$Res> {
  _$NewClientCopyWithImpl(NewClient _value, $Res Function(NewClient) _then)
      : super(_value, (v) => _then(v as NewClient));

  @override
  NewClient get _value => super._value as NewClient;
}

/// @nodoc

class _$NewClient implements NewClient {
  const _$NewClient();

  @override
  String toString() {
    return 'SignUpClientEvent.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NewClient);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(String name) nameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(double height) heightChanged,
    required TResult Function() signUpButtonPressed,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(String name)? nameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(double height)? heightChanged,
    TResult Function()? signUpButtonPressed,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(String name)? nameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(double height)? heightChanged,
    TResult Function()? signUpButtonPressed,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewClient value) start,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(HeightChanged value) heightChanged,
    required TResult Function(SignUpButtonPressed value) signUpButtonPressed,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewClient value)? start,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(HeightChanged value)? heightChanged,
    TResult Function(SignUpButtonPressed value)? signUpButtonPressed,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewClient value)? start,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(HeightChanged value)? heightChanged,
    TResult Function(SignUpButtonPressed value)? signUpButtonPressed,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class NewClient implements SignUpClientEvent {
  const factory NewClient() = _$NewClient;
}

/// @nodoc
abstract class $NameChangedCopyWith<$Res> {
  factory $NameChangedCopyWith(
          NameChanged value, $Res Function(NameChanged) then) =
      _$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$NameChangedCopyWithImpl<$Res>
    extends _$SignUpClientEventCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(
      NameChanged _value, $Res Function(NameChanged) _then)
      : super(_value, (v) => _then(v as NameChanged));

  @override
  NameChanged get _value => super._value as NameChanged;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(NameChanged(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChanged implements NameChanged {
  const _$NameChanged(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'SignUpClientEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NameChanged &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  $NameChangedCopyWith<NameChanged> get copyWith =>
      _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(String name) nameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(double height) heightChanged,
    required TResult Function() signUpButtonPressed,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(String name)? nameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(double height)? heightChanged,
    TResult Function()? signUpButtonPressed,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(String name)? nameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(double height)? heightChanged,
    TResult Function()? signUpButtonPressed,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewClient value) start,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(HeightChanged value) heightChanged,
    required TResult Function(SignUpButtonPressed value) signUpButtonPressed,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewClient value)? start,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(HeightChanged value)? heightChanged,
    TResult Function(SignUpButtonPressed value)? signUpButtonPressed,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewClient value)? start,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(HeightChanged value)? heightChanged,
    TResult Function(SignUpButtonPressed value)? signUpButtonPressed,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements SignUpClientEvent {
  const factory NameChanged(String name) = _$NameChanged;

  String get name;
  @JsonKey(ignore: true)
  $NameChangedCopyWith<NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastNameChangedCopyWith<$Res> {
  factory $LastNameChangedCopyWith(
          LastNameChanged value, $Res Function(LastNameChanged) then) =
      _$LastNameChangedCopyWithImpl<$Res>;
  $Res call({String lastName});
}

/// @nodoc
class _$LastNameChangedCopyWithImpl<$Res>
    extends _$SignUpClientEventCopyWithImpl<$Res>
    implements $LastNameChangedCopyWith<$Res> {
  _$LastNameChangedCopyWithImpl(
      LastNameChanged _value, $Res Function(LastNameChanged) _then)
      : super(_value, (v) => _then(v as LastNameChanged));

  @override
  LastNameChanged get _value => super._value as LastNameChanged;

  @override
  $Res call({
    Object? lastName = freezed,
  }) {
    return _then(LastNameChanged(
      lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LastNameChanged implements LastNameChanged {
  const _$LastNameChanged(this.lastName);

  @override
  final String lastName;

  @override
  String toString() {
    return 'SignUpClientEvent.lastNameChanged(lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LastNameChanged &&
            const DeepCollectionEquality().equals(other.lastName, lastName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(lastName));

  @JsonKey(ignore: true)
  @override
  $LastNameChangedCopyWith<LastNameChanged> get copyWith =>
      _$LastNameChangedCopyWithImpl<LastNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(String name) nameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(double height) heightChanged,
    required TResult Function() signUpButtonPressed,
  }) {
    return lastNameChanged(lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(String name)? nameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(double height)? heightChanged,
    TResult Function()? signUpButtonPressed,
  }) {
    return lastNameChanged?.call(lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(String name)? nameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(double height)? heightChanged,
    TResult Function()? signUpButtonPressed,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewClient value) start,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(HeightChanged value) heightChanged,
    required TResult Function(SignUpButtonPressed value) signUpButtonPressed,
  }) {
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewClient value)? start,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(HeightChanged value)? heightChanged,
    TResult Function(SignUpButtonPressed value)? signUpButtonPressed,
  }) {
    return lastNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewClient value)? start,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(HeightChanged value)? heightChanged,
    TResult Function(SignUpButtonPressed value)? signUpButtonPressed,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class LastNameChanged implements SignUpClientEvent {
  const factory LastNameChanged(String lastName) = _$LastNameChanged;

  String get lastName;
  @JsonKey(ignore: true)
  $LastNameChangedCopyWith<LastNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$SignUpClientEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(EmailChanged(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'SignUpClientEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmailChanged &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(String name) nameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(double height) heightChanged,
    required TResult Function() signUpButtonPressed,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(String name)? nameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(double height)? heightChanged,
    TResult Function()? signUpButtonPressed,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(String name)? nameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(double height)? heightChanged,
    TResult Function()? signUpButtonPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewClient value) start,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(HeightChanged value) heightChanged,
    required TResult Function(SignUpButtonPressed value) signUpButtonPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewClient value)? start,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(HeightChanged value)? heightChanged,
    TResult Function(SignUpButtonPressed value)? signUpButtonPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewClient value)? start,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(HeightChanged value)? heightChanged,
    TResult Function(SignUpButtonPressed value)? signUpButtonPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignUpClientEvent {
  const factory EmailChanged(String email) = _$EmailChanged;

  String get email;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$SignUpClientEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(PasswordChanged(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'SignUpClientEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PasswordChanged &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(String name) nameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(double height) heightChanged,
    required TResult Function() signUpButtonPressed,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(String name)? nameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(double height)? heightChanged,
    TResult Function()? signUpButtonPressed,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(String name)? nameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(double height)? heightChanged,
    TResult Function()? signUpButtonPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewClient value) start,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(HeightChanged value) heightChanged,
    required TResult Function(SignUpButtonPressed value) signUpButtonPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewClient value)? start,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(HeightChanged value)? heightChanged,
    TResult Function(SignUpButtonPressed value)? signUpButtonPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewClient value)? start,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(HeightChanged value)? heightChanged,
    TResult Function(SignUpButtonPressed value)? signUpButtonPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignUpClientEvent {
  const factory PasswordChanged(String password) = _$PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneChangedCopyWith<$Res> {
  factory $PhoneChangedCopyWith(
          PhoneChanged value, $Res Function(PhoneChanged) then) =
      _$PhoneChangedCopyWithImpl<$Res>;
  $Res call({String phone});
}

/// @nodoc
class _$PhoneChangedCopyWithImpl<$Res>
    extends _$SignUpClientEventCopyWithImpl<$Res>
    implements $PhoneChangedCopyWith<$Res> {
  _$PhoneChangedCopyWithImpl(
      PhoneChanged _value, $Res Function(PhoneChanged) _then)
      : super(_value, (v) => _then(v as PhoneChanged));

  @override
  PhoneChanged get _value => super._value as PhoneChanged;

  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(PhoneChanged(
      phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneChanged implements PhoneChanged {
  const _$PhoneChanged(this.phone);

  @override
  final String phone;

  @override
  String toString() {
    return 'SignUpClientEvent.phoneChanged(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PhoneChanged &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(phone));

  @JsonKey(ignore: true)
  @override
  $PhoneChangedCopyWith<PhoneChanged> get copyWith =>
      _$PhoneChangedCopyWithImpl<PhoneChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(String name) nameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(double height) heightChanged,
    required TResult Function() signUpButtonPressed,
  }) {
    return phoneChanged(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(String name)? nameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(double height)? heightChanged,
    TResult Function()? signUpButtonPressed,
  }) {
    return phoneChanged?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(String name)? nameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(double height)? heightChanged,
    TResult Function()? signUpButtonPressed,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewClient value) start,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(HeightChanged value) heightChanged,
    required TResult Function(SignUpButtonPressed value) signUpButtonPressed,
  }) {
    return phoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewClient value)? start,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(HeightChanged value)? heightChanged,
    TResult Function(SignUpButtonPressed value)? signUpButtonPressed,
  }) {
    return phoneChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewClient value)? start,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(HeightChanged value)? heightChanged,
    TResult Function(SignUpButtonPressed value)? signUpButtonPressed,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneChanged implements SignUpClientEvent {
  const factory PhoneChanged(String phone) = _$PhoneChanged;

  String get phone;
  @JsonKey(ignore: true)
  $PhoneChangedCopyWith<PhoneChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeightChangedCopyWith<$Res> {
  factory $HeightChangedCopyWith(
          HeightChanged value, $Res Function(HeightChanged) then) =
      _$HeightChangedCopyWithImpl<$Res>;
  $Res call({double height});
}

/// @nodoc
class _$HeightChangedCopyWithImpl<$Res>
    extends _$SignUpClientEventCopyWithImpl<$Res>
    implements $HeightChangedCopyWith<$Res> {
  _$HeightChangedCopyWithImpl(
      HeightChanged _value, $Res Function(HeightChanged) _then)
      : super(_value, (v) => _then(v as HeightChanged));

  @override
  HeightChanged get _value => super._value as HeightChanged;

  @override
  $Res call({
    Object? height = freezed,
  }) {
    return _then(HeightChanged(
      height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$HeightChanged implements HeightChanged {
  const _$HeightChanged(this.height);

  @override
  final double height;

  @override
  String toString() {
    return 'SignUpClientEvent.heightChanged(height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HeightChanged &&
            const DeepCollectionEquality().equals(other.height, height));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(height));

  @JsonKey(ignore: true)
  @override
  $HeightChangedCopyWith<HeightChanged> get copyWith =>
      _$HeightChangedCopyWithImpl<HeightChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(String name) nameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(double height) heightChanged,
    required TResult Function() signUpButtonPressed,
  }) {
    return heightChanged(height);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(String name)? nameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(double height)? heightChanged,
    TResult Function()? signUpButtonPressed,
  }) {
    return heightChanged?.call(height);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(String name)? nameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(double height)? heightChanged,
    TResult Function()? signUpButtonPressed,
    required TResult orElse(),
  }) {
    if (heightChanged != null) {
      return heightChanged(height);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewClient value) start,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(HeightChanged value) heightChanged,
    required TResult Function(SignUpButtonPressed value) signUpButtonPressed,
  }) {
    return heightChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewClient value)? start,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(HeightChanged value)? heightChanged,
    TResult Function(SignUpButtonPressed value)? signUpButtonPressed,
  }) {
    return heightChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewClient value)? start,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(HeightChanged value)? heightChanged,
    TResult Function(SignUpButtonPressed value)? signUpButtonPressed,
    required TResult orElse(),
  }) {
    if (heightChanged != null) {
      return heightChanged(this);
    }
    return orElse();
  }
}

abstract class HeightChanged implements SignUpClientEvent {
  const factory HeightChanged(double height) = _$HeightChanged;

  double get height;
  @JsonKey(ignore: true)
  $HeightChangedCopyWith<HeightChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpButtonPressedCopyWith<$Res> {
  factory $SignUpButtonPressedCopyWith(
          SignUpButtonPressed value, $Res Function(SignUpButtonPressed) then) =
      _$SignUpButtonPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpButtonPressedCopyWithImpl<$Res>
    extends _$SignUpClientEventCopyWithImpl<$Res>
    implements $SignUpButtonPressedCopyWith<$Res> {
  _$SignUpButtonPressedCopyWithImpl(
      SignUpButtonPressed _value, $Res Function(SignUpButtonPressed) _then)
      : super(_value, (v) => _then(v as SignUpButtonPressed));

  @override
  SignUpButtonPressed get _value => super._value as SignUpButtonPressed;
}

/// @nodoc

class _$SignUpButtonPressed implements SignUpButtonPressed {
  const _$SignUpButtonPressed();

  @override
  String toString() {
    return 'SignUpClientEvent.signUpButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignUpButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(String name) nameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(double height) heightChanged,
    required TResult Function() signUpButtonPressed,
  }) {
    return signUpButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(String name)? nameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(double height)? heightChanged,
    TResult Function()? signUpButtonPressed,
  }) {
    return signUpButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(String name)? nameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(double height)? heightChanged,
    TResult Function()? signUpButtonPressed,
    required TResult orElse(),
  }) {
    if (signUpButtonPressed != null) {
      return signUpButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewClient value) start,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(HeightChanged value) heightChanged,
    required TResult Function(SignUpButtonPressed value) signUpButtonPressed,
  }) {
    return signUpButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewClient value)? start,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(HeightChanged value)? heightChanged,
    TResult Function(SignUpButtonPressed value)? signUpButtonPressed,
  }) {
    return signUpButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewClient value)? start,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(HeightChanged value)? heightChanged,
    TResult Function(SignUpButtonPressed value)? signUpButtonPressed,
    required TResult orElse(),
  }) {
    if (signUpButtonPressed != null) {
      return signUpButtonPressed(this);
    }
    return orElse();
  }
}

abstract class SignUpButtonPressed implements SignUpClientEvent {
  const factory SignUpButtonPressed() = _$SignUpButtonPressed;
}

/// @nodoc
class _$SignUpClientStateTearOff {
  const _$SignUpClientStateTearOff();

  _SignUpClientState call(
      {required NamesUser name,
      required NamesUser lastName,
      required EmailAddress emailAddress,
      required Password password,
      required Phone phone,
      required Height height,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _SignUpClientState(
      name: name,
      lastName: lastName,
      emailAddress: emailAddress,
      password: password,
      phone: phone,
      height: height,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }

  _NameChanged nameChanged({required NamesUser name}) {
    return _NameChanged(
      name: name,
    );
  }

  _EmailChanged emailChanged({required EmailAddress emailAddress}) {
    return _EmailChanged(
      emailAddress: emailAddress,
    );
  }
}

/// @nodoc
const $SignUpClientState = _$SignUpClientStateTearOff();

/// @nodoc
mixin _$SignUpClientState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            NamesUser name,
            NamesUser lastName,
            EmailAddress emailAddress,
            Password password,
            Phone phone,
            Height height,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)
        $default, {
    required TResult Function(NamesUser name) nameChanged,
    required TResult Function(EmailAddress emailAddress) emailChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            NamesUser name,
            NamesUser lastName,
            EmailAddress emailAddress,
            Password password,
            Phone phone,
            Height height,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        $default, {
    TResult Function(NamesUser name)? nameChanged,
    TResult Function(EmailAddress emailAddress)? emailChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            NamesUser name,
            NamesUser lastName,
            EmailAddress emailAddress,
            Password password,
            Phone phone,
            Height height,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        $default, {
    TResult Function(NamesUser name)? nameChanged,
    TResult Function(EmailAddress emailAddress)? emailChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignUpClientState value) $default, {
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_SignUpClientState value)? $default, {
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignUpClientState value)? $default, {
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpClientStateCopyWith<$Res> {
  factory $SignUpClientStateCopyWith(
          SignUpClientState value, $Res Function(SignUpClientState) then) =
      _$SignUpClientStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpClientStateCopyWithImpl<$Res>
    implements $SignUpClientStateCopyWith<$Res> {
  _$SignUpClientStateCopyWithImpl(this._value, this._then);

  final SignUpClientState _value;
  // ignore: unused_field
  final $Res Function(SignUpClientState) _then;
}

/// @nodoc
abstract class _$SignUpClientStateCopyWith<$Res> {
  factory _$SignUpClientStateCopyWith(
          _SignUpClientState value, $Res Function(_SignUpClientState) then) =
      __$SignUpClientStateCopyWithImpl<$Res>;
  $Res call(
      {NamesUser name,
      NamesUser lastName,
      EmailAddress emailAddress,
      Password password,
      Phone phone,
      Height height,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$SignUpClientStateCopyWithImpl<$Res>
    extends _$SignUpClientStateCopyWithImpl<$Res>
    implements _$SignUpClientStateCopyWith<$Res> {
  __$SignUpClientStateCopyWithImpl(
      _SignUpClientState _value, $Res Function(_SignUpClientState) _then)
      : super(_value, (v) => _then(v as _SignUpClientState));

  @override
  _SignUpClientState get _value => super._value as _SignUpClientState;

  @override
  $Res call({
    Object? name = freezed,
    Object? lastName = freezed,
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? phone = freezed,
    Object? height = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignUpClientState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NamesUser,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as NamesUser,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as Height,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SignUpClientState implements _SignUpClientState {
  const _$_SignUpClientState(
      {required this.name,
      required this.lastName,
      required this.emailAddress,
      required this.password,
      required this.phone,
      required this.height,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final NamesUser name;
  @override
  final NamesUser lastName;
  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final Phone phone;
  @override
  final Height height;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignUpClientState(name: $name, lastName: $lastName, emailAddress: $emailAddress, password: $password, phone: $phone, height: $height, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignUpClientState &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality().equals(
                other.authFailureOrSuccessOption, authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(authFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$SignUpClientStateCopyWith<_SignUpClientState> get copyWith =>
      __$SignUpClientStateCopyWithImpl<_SignUpClientState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            NamesUser name,
            NamesUser lastName,
            EmailAddress emailAddress,
            Password password,
            Phone phone,
            Height height,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)
        $default, {
    required TResult Function(NamesUser name) nameChanged,
    required TResult Function(EmailAddress emailAddress) emailChanged,
  }) {
    return $default(name, lastName, emailAddress, password, phone, height,
        showErrorMessages, isSubmitting, authFailureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            NamesUser name,
            NamesUser lastName,
            EmailAddress emailAddress,
            Password password,
            Phone phone,
            Height height,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        $default, {
    TResult Function(NamesUser name)? nameChanged,
    TResult Function(EmailAddress emailAddress)? emailChanged,
  }) {
    return $default?.call(name, lastName, emailAddress, password, phone, height,
        showErrorMessages, isSubmitting, authFailureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            NamesUser name,
            NamesUser lastName,
            EmailAddress emailAddress,
            Password password,
            Phone phone,
            Height height,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        $default, {
    TResult Function(NamesUser name)? nameChanged,
    TResult Function(EmailAddress emailAddress)? emailChanged,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(name, lastName, emailAddress, password, phone, height,
          showErrorMessages, isSubmitting, authFailureOrSuccessOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignUpClientState value) $default, {
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_SignUpClientState value)? $default, {
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignUpClientState value)? $default, {
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _SignUpClientState implements SignUpClientState {
  const factory _SignUpClientState(
      {required NamesUser name,
      required NamesUser lastName,
      required EmailAddress emailAddress,
      required Password password,
      required Phone phone,
      required Height height,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_SignUpClientState;

  NamesUser get name;
  NamesUser get lastName;
  EmailAddress get emailAddress;
  Password get password;
  Phone get phone;
  Height get height;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @JsonKey(ignore: true)
  _$SignUpClientStateCopyWith<_SignUpClientState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({NamesUser name});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res>
    extends _$SignUpClientStateCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_NameChanged(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NamesUser,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged({required this.name});

  @override
  final NamesUser name;

  @override
  String toString() {
    return 'SignUpClientState.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NameChanged &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            NamesUser name,
            NamesUser lastName,
            EmailAddress emailAddress,
            Password password,
            Phone phone,
            Height height,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)
        $default, {
    required TResult Function(NamesUser name) nameChanged,
    required TResult Function(EmailAddress emailAddress) emailChanged,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            NamesUser name,
            NamesUser lastName,
            EmailAddress emailAddress,
            Password password,
            Phone phone,
            Height height,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        $default, {
    TResult Function(NamesUser name)? nameChanged,
    TResult Function(EmailAddress emailAddress)? emailChanged,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            NamesUser name,
            NamesUser lastName,
            EmailAddress emailAddress,
            Password password,
            Phone phone,
            Height height,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        $default, {
    TResult Function(NamesUser name)? nameChanged,
    TResult Function(EmailAddress emailAddress)? emailChanged,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignUpClientState value) $default, {
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_SignUpClientState value)? $default, {
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignUpClientState value)? $default, {
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements SignUpClientState {
  const factory _NameChanged({required NamesUser name}) = _$_NameChanged;

  NamesUser get name;
  @JsonKey(ignore: true)
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({EmailAddress emailAddress});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res>
    extends _$SignUpClientStateCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object? emailAddress = freezed,
  }) {
    return _then(_EmailChanged(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged({required this.emailAddress});

  @override
  final EmailAddress emailAddress;

  @override
  String toString() {
    return 'SignUpClientState.emailChanged(emailAddress: $emailAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmailChanged &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(emailAddress));

  @JsonKey(ignore: true)
  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            NamesUser name,
            NamesUser lastName,
            EmailAddress emailAddress,
            Password password,
            Phone phone,
            Height height,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)
        $default, {
    required TResult Function(NamesUser name) nameChanged,
    required TResult Function(EmailAddress emailAddress) emailChanged,
  }) {
    return emailChanged(emailAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            NamesUser name,
            NamesUser lastName,
            EmailAddress emailAddress,
            Password password,
            Phone phone,
            Height height,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        $default, {
    TResult Function(NamesUser name)? nameChanged,
    TResult Function(EmailAddress emailAddress)? emailChanged,
  }) {
    return emailChanged?.call(emailAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            NamesUser name,
            NamesUser lastName,
            EmailAddress emailAddress,
            Password password,
            Phone phone,
            Height height,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        $default, {
    TResult Function(NamesUser name)? nameChanged,
    TResult Function(EmailAddress emailAddress)? emailChanged,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignUpClientState value) $default, {
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_SignUpClientState value)? $default, {
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignUpClientState value)? $default, {
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements SignUpClientState {
  const factory _EmailChanged({required EmailAddress emailAddress}) =
      _$_EmailChanged;

  EmailAddress get emailAddress;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
