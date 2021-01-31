// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthBlocEventTearOff {
  const _$AuthBlocEventTearOff();

// ignore: unused_element
  LoginAuthBlocEvent login() {
    return const LoginAuthBlocEvent();
  }

// ignore: unused_element
  RegisterAuthBlocEvent register() {
    return const RegisterAuthBlocEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthBlocEvent = _$AuthBlocEventTearOff();

/// @nodoc
mixin _$AuthBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult login(),
    @required TResult register(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult login(),
    TResult register(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult login(LoginAuthBlocEvent value),
    @required TResult register(RegisterAuthBlocEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult login(LoginAuthBlocEvent value),
    TResult register(RegisterAuthBlocEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthBlocEventCopyWith<$Res> {
  factory $AuthBlocEventCopyWith(
          AuthBlocEvent value, $Res Function(AuthBlocEvent) then) =
      _$AuthBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthBlocEventCopyWithImpl<$Res>
    implements $AuthBlocEventCopyWith<$Res> {
  _$AuthBlocEventCopyWithImpl(this._value, this._then);

  final AuthBlocEvent _value;
  // ignore: unused_field
  final $Res Function(AuthBlocEvent) _then;
}

/// @nodoc
abstract class $LoginAuthBlocEventCopyWith<$Res> {
  factory $LoginAuthBlocEventCopyWith(
          LoginAuthBlocEvent value, $Res Function(LoginAuthBlocEvent) then) =
      _$LoginAuthBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginAuthBlocEventCopyWithImpl<$Res>
    extends _$AuthBlocEventCopyWithImpl<$Res>
    implements $LoginAuthBlocEventCopyWith<$Res> {
  _$LoginAuthBlocEventCopyWithImpl(
      LoginAuthBlocEvent _value, $Res Function(LoginAuthBlocEvent) _then)
      : super(_value, (v) => _then(v as LoginAuthBlocEvent));

  @override
  LoginAuthBlocEvent get _value => super._value as LoginAuthBlocEvent;
}

/// @nodoc
class _$LoginAuthBlocEvent extends LoginAuthBlocEvent {
  const _$LoginAuthBlocEvent() : super._();

  @override
  String toString() {
    return 'AuthBlocEvent.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginAuthBlocEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult login(),
    @required TResult register(),
  }) {
    assert(login != null);
    assert(register != null);
    return login();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult login(),
    TResult register(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult login(LoginAuthBlocEvent value),
    @required TResult register(RegisterAuthBlocEvent value),
  }) {
    assert(login != null);
    assert(register != null);
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult login(LoginAuthBlocEvent value),
    TResult register(RegisterAuthBlocEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LoginAuthBlocEvent extends AuthBlocEvent {
  const LoginAuthBlocEvent._() : super._();
  const factory LoginAuthBlocEvent() = _$LoginAuthBlocEvent;
}

/// @nodoc
abstract class $RegisterAuthBlocEventCopyWith<$Res> {
  factory $RegisterAuthBlocEventCopyWith(RegisterAuthBlocEvent value,
          $Res Function(RegisterAuthBlocEvent) then) =
      _$RegisterAuthBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterAuthBlocEventCopyWithImpl<$Res>
    extends _$AuthBlocEventCopyWithImpl<$Res>
    implements $RegisterAuthBlocEventCopyWith<$Res> {
  _$RegisterAuthBlocEventCopyWithImpl(
      RegisterAuthBlocEvent _value, $Res Function(RegisterAuthBlocEvent) _then)
      : super(_value, (v) => _then(v as RegisterAuthBlocEvent));

  @override
  RegisterAuthBlocEvent get _value => super._value as RegisterAuthBlocEvent;
}

/// @nodoc
class _$RegisterAuthBlocEvent extends RegisterAuthBlocEvent {
  const _$RegisterAuthBlocEvent() : super._();

  @override
  String toString() {
    return 'AuthBlocEvent.register()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RegisterAuthBlocEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult login(),
    @required TResult register(),
  }) {
    assert(login != null);
    assert(register != null);
    return register();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult login(),
    TResult register(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (register != null) {
      return register();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult login(LoginAuthBlocEvent value),
    @required TResult register(RegisterAuthBlocEvent value),
  }) {
    assert(login != null);
    assert(register != null);
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult login(LoginAuthBlocEvent value),
    TResult register(RegisterAuthBlocEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class RegisterAuthBlocEvent extends AuthBlocEvent {
  const RegisterAuthBlocEvent._() : super._();
  const factory RegisterAuthBlocEvent() = _$RegisterAuthBlocEvent;
}

/// @nodoc
class _$AuthBlocStateTearOff {
  const _$AuthBlocStateTearOff();

// ignore: unused_element
  InitialAuthBlocState initial() {
    return const InitialAuthBlocState();
  }

// ignore: unused_element
  AuthenticatedAuthBlocState authenticated() {
    return const AuthenticatedAuthBlocState();
  }

// ignore: unused_element
  NotAuthenticatedAuthBlocState notAuthenticated() {
    return const NotAuthenticatedAuthBlocState();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthBlocState = _$AuthBlocStateTearOff();

/// @nodoc
mixin _$AuthBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticated(),
    @required TResult notAuthenticated(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(),
    TResult notAuthenticated(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(InitialAuthBlocState value),
    @required TResult authenticated(AuthenticatedAuthBlocState value),
    @required TResult notAuthenticated(NotAuthenticatedAuthBlocState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(InitialAuthBlocState value),
    TResult authenticated(AuthenticatedAuthBlocState value),
    TResult notAuthenticated(NotAuthenticatedAuthBlocState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthBlocStateCopyWith<$Res> {
  factory $AuthBlocStateCopyWith(
          AuthBlocState value, $Res Function(AuthBlocState) then) =
      _$AuthBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthBlocStateCopyWithImpl<$Res>
    implements $AuthBlocStateCopyWith<$Res> {
  _$AuthBlocStateCopyWithImpl(this._value, this._then);

  final AuthBlocState _value;
  // ignore: unused_field
  final $Res Function(AuthBlocState) _then;
}

/// @nodoc
abstract class $InitialAuthBlocStateCopyWith<$Res> {
  factory $InitialAuthBlocStateCopyWith(InitialAuthBlocState value,
          $Res Function(InitialAuthBlocState) then) =
      _$InitialAuthBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialAuthBlocStateCopyWithImpl<$Res>
    extends _$AuthBlocStateCopyWithImpl<$Res>
    implements $InitialAuthBlocStateCopyWith<$Res> {
  _$InitialAuthBlocStateCopyWithImpl(
      InitialAuthBlocState _value, $Res Function(InitialAuthBlocState) _then)
      : super(_value, (v) => _then(v as InitialAuthBlocState));

  @override
  InitialAuthBlocState get _value => super._value as InitialAuthBlocState;
}

/// @nodoc
class _$InitialAuthBlocState extends InitialAuthBlocState {
  const _$InitialAuthBlocState() : super._();

  @override
  String toString() {
    return 'AuthBlocState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialAuthBlocState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticated(),
    @required TResult notAuthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(notAuthenticated != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(),
    TResult notAuthenticated(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(InitialAuthBlocState value),
    @required TResult authenticated(AuthenticatedAuthBlocState value),
    @required TResult notAuthenticated(NotAuthenticatedAuthBlocState value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(notAuthenticated != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(InitialAuthBlocState value),
    TResult authenticated(AuthenticatedAuthBlocState value),
    TResult notAuthenticated(NotAuthenticatedAuthBlocState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialAuthBlocState extends AuthBlocState {
  const InitialAuthBlocState._() : super._();
  const factory InitialAuthBlocState() = _$InitialAuthBlocState;
}

/// @nodoc
abstract class $AuthenticatedAuthBlocStateCopyWith<$Res> {
  factory $AuthenticatedAuthBlocStateCopyWith(AuthenticatedAuthBlocState value,
          $Res Function(AuthenticatedAuthBlocState) then) =
      _$AuthenticatedAuthBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticatedAuthBlocStateCopyWithImpl<$Res>
    extends _$AuthBlocStateCopyWithImpl<$Res>
    implements $AuthenticatedAuthBlocStateCopyWith<$Res> {
  _$AuthenticatedAuthBlocStateCopyWithImpl(AuthenticatedAuthBlocState _value,
      $Res Function(AuthenticatedAuthBlocState) _then)
      : super(_value, (v) => _then(v as AuthenticatedAuthBlocState));

  @override
  AuthenticatedAuthBlocState get _value =>
      super._value as AuthenticatedAuthBlocState;
}

/// @nodoc
class _$AuthenticatedAuthBlocState extends AuthenticatedAuthBlocState {
  const _$AuthenticatedAuthBlocState() : super._();

  @override
  String toString() {
    return 'AuthBlocState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthenticatedAuthBlocState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticated(),
    @required TResult notAuthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(notAuthenticated != null);
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(),
    TResult notAuthenticated(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(InitialAuthBlocState value),
    @required TResult authenticated(AuthenticatedAuthBlocState value),
    @required TResult notAuthenticated(NotAuthenticatedAuthBlocState value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(notAuthenticated != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(InitialAuthBlocState value),
    TResult authenticated(AuthenticatedAuthBlocState value),
    TResult notAuthenticated(NotAuthenticatedAuthBlocState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AuthenticatedAuthBlocState extends AuthBlocState {
  const AuthenticatedAuthBlocState._() : super._();
  const factory AuthenticatedAuthBlocState() = _$AuthenticatedAuthBlocState;
}

/// @nodoc
abstract class $NotAuthenticatedAuthBlocStateCopyWith<$Res> {
  factory $NotAuthenticatedAuthBlocStateCopyWith(
          NotAuthenticatedAuthBlocState value,
          $Res Function(NotAuthenticatedAuthBlocState) then) =
      _$NotAuthenticatedAuthBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotAuthenticatedAuthBlocStateCopyWithImpl<$Res>
    extends _$AuthBlocStateCopyWithImpl<$Res>
    implements $NotAuthenticatedAuthBlocStateCopyWith<$Res> {
  _$NotAuthenticatedAuthBlocStateCopyWithImpl(
      NotAuthenticatedAuthBlocState _value,
      $Res Function(NotAuthenticatedAuthBlocState) _then)
      : super(_value, (v) => _then(v as NotAuthenticatedAuthBlocState));

  @override
  NotAuthenticatedAuthBlocState get _value =>
      super._value as NotAuthenticatedAuthBlocState;
}

/// @nodoc
class _$NotAuthenticatedAuthBlocState extends NotAuthenticatedAuthBlocState {
  const _$NotAuthenticatedAuthBlocState() : super._();

  @override
  String toString() {
    return 'AuthBlocState.notAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotAuthenticatedAuthBlocState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticated(),
    @required TResult notAuthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(notAuthenticated != null);
    return notAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(),
    TResult notAuthenticated(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notAuthenticated != null) {
      return notAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(InitialAuthBlocState value),
    @required TResult authenticated(AuthenticatedAuthBlocState value),
    @required TResult notAuthenticated(NotAuthenticatedAuthBlocState value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(notAuthenticated != null);
    return notAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(InitialAuthBlocState value),
    TResult authenticated(AuthenticatedAuthBlocState value),
    TResult notAuthenticated(NotAuthenticatedAuthBlocState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notAuthenticated != null) {
      return notAuthenticated(this);
    }
    return orElse();
  }
}

abstract class NotAuthenticatedAuthBlocState extends AuthBlocState {
  const NotAuthenticatedAuthBlocState._() : super._();
  const factory NotAuthenticatedAuthBlocState() =
      _$NotAuthenticatedAuthBlocState;
}
