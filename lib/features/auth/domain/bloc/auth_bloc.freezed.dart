// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthBlocEventTearOff {
  const _$AuthBlocEventTearOff();

  UserChangedAuthBlocEvent userChanged(User? user) {
    return UserChangedAuthBlocEvent(
      user,
    );
  }

  SignOutAuthBlocEvent signOut() {
    return const SignOutAuthBlocEvent();
  }
}

/// @nodoc
const $AuthBlocEvent = _$AuthBlocEventTearOff();

/// @nodoc
mixin _$AuthBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) userChanged,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? userChanged,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserChangedAuthBlocEvent value) userChanged,
    required TResult Function(SignOutAuthBlocEvent value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserChangedAuthBlocEvent value)? userChanged,
    TResult Function(SignOutAuthBlocEvent value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
abstract class $UserChangedAuthBlocEventCopyWith<$Res> {
  factory $UserChangedAuthBlocEventCopyWith(UserChangedAuthBlocEvent value,
          $Res Function(UserChangedAuthBlocEvent) then) =
      _$UserChangedAuthBlocEventCopyWithImpl<$Res>;
  $Res call({User? user});
}

/// @nodoc
class _$UserChangedAuthBlocEventCopyWithImpl<$Res>
    extends _$AuthBlocEventCopyWithImpl<$Res>
    implements $UserChangedAuthBlocEventCopyWith<$Res> {
  _$UserChangedAuthBlocEventCopyWithImpl(UserChangedAuthBlocEvent _value,
      $Res Function(UserChangedAuthBlocEvent) _then)
      : super(_value, (v) => _then(v as UserChangedAuthBlocEvent));

  @override
  UserChangedAuthBlocEvent get _value =>
      super._value as UserChangedAuthBlocEvent;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(UserChangedAuthBlocEvent(
      user == freezed ? _value.user : user as User?,
    ));
  }
}

/// @nodoc
class _$UserChangedAuthBlocEvent extends UserChangedAuthBlocEvent {
  const _$UserChangedAuthBlocEvent(this.user) : super._();

  @override
  final User? user;

  @override
  String toString() {
    return 'AuthBlocEvent.userChanged(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserChangedAuthBlocEvent &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $UserChangedAuthBlocEventCopyWith<UserChangedAuthBlocEvent> get copyWith =>
      _$UserChangedAuthBlocEventCopyWithImpl<UserChangedAuthBlocEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) userChanged,
    required TResult Function() signOut,
  }) {
    return userChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? userChanged,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (userChanged != null) {
      return userChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserChangedAuthBlocEvent value) userChanged,
    required TResult Function(SignOutAuthBlocEvent value) signOut,
  }) {
    return userChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserChangedAuthBlocEvent value)? userChanged,
    TResult Function(SignOutAuthBlocEvent value)? signOut,
    required TResult orElse(),
  }) {
    if (userChanged != null) {
      return userChanged(this);
    }
    return orElse();
  }
}

abstract class UserChangedAuthBlocEvent extends AuthBlocEvent {
  const UserChangedAuthBlocEvent._() : super._();
  const factory UserChangedAuthBlocEvent(User? user) =
      _$UserChangedAuthBlocEvent;

  User? get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserChangedAuthBlocEventCopyWith<UserChangedAuthBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignOutAuthBlocEventCopyWith<$Res> {
  factory $SignOutAuthBlocEventCopyWith(SignOutAuthBlocEvent value,
          $Res Function(SignOutAuthBlocEvent) then) =
      _$SignOutAuthBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutAuthBlocEventCopyWithImpl<$Res>
    extends _$AuthBlocEventCopyWithImpl<$Res>
    implements $SignOutAuthBlocEventCopyWith<$Res> {
  _$SignOutAuthBlocEventCopyWithImpl(
      SignOutAuthBlocEvent _value, $Res Function(SignOutAuthBlocEvent) _then)
      : super(_value, (v) => _then(v as SignOutAuthBlocEvent));

  @override
  SignOutAuthBlocEvent get _value => super._value as SignOutAuthBlocEvent;
}

/// @nodoc
class _$SignOutAuthBlocEvent extends SignOutAuthBlocEvent {
  const _$SignOutAuthBlocEvent() : super._();

  @override
  String toString() {
    return 'AuthBlocEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignOutAuthBlocEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) userChanged,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? userChanged,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserChangedAuthBlocEvent value) userChanged,
    required TResult Function(SignOutAuthBlocEvent value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserChangedAuthBlocEvent value)? userChanged,
    TResult Function(SignOutAuthBlocEvent value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOutAuthBlocEvent extends AuthBlocEvent {
  const SignOutAuthBlocEvent._() : super._();
  const factory SignOutAuthBlocEvent() = _$SignOutAuthBlocEvent;
}

/// @nodoc
class _$AuthBlocStateTearOff {
  const _$AuthBlocStateTearOff();

  InitialAuthBlocState initial(AuthenticationStatus status, User? user) {
    return InitialAuthBlocState(
      status,
      user,
    );
  }

  AuthenticatedAuthBlocState authenticated(
      AuthenticationStatus status, User? user) {
    return AuthenticatedAuthBlocState(
      status,
      user,
    );
  }

  UnauthenticatedAuthBlocState unauthenticated() {
    return const UnauthenticatedAuthBlocState();
  }

  UnknownAuthBlocState unknown() {
    return const UnknownAuthBlocState();
  }
}

/// @nodoc
const $AuthBlocState = _$AuthBlocStateTearOff();

/// @nodoc
mixin _$AuthBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatus status, User? user) initial,
    required TResult Function(AuthenticationStatus status, User? user)
        authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status, User? user)? initial,
    TResult Function(AuthenticationStatus status, User? user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAuthBlocState value) initial,
    required TResult Function(AuthenticatedAuthBlocState value) authenticated,
    required TResult Function(UnauthenticatedAuthBlocState value)
        unauthenticated,
    required TResult Function(UnknownAuthBlocState value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAuthBlocState value)? initial,
    TResult Function(AuthenticatedAuthBlocState value)? authenticated,
    TResult Function(UnauthenticatedAuthBlocState value)? unauthenticated,
    TResult Function(UnknownAuthBlocState value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
  $Res call({AuthenticationStatus status, User? user});
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

  @override
  $Res call({
    Object? status = freezed,
    Object? user = freezed,
  }) {
    return _then(InitialAuthBlocState(
      status == freezed ? _value.status : status as AuthenticationStatus,
      user == freezed ? _value.user : user as User?,
    ));
  }
}

/// @nodoc
class _$InitialAuthBlocState extends InitialAuthBlocState {
  const _$InitialAuthBlocState(this.status, this.user) : super._();

  @override
  final AuthenticationStatus status;
  @override
  final User? user;

  @override
  String toString() {
    return 'AuthBlocState.initial(status: $status, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitialAuthBlocState &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $InitialAuthBlocStateCopyWith<InitialAuthBlocState> get copyWith =>
      _$InitialAuthBlocStateCopyWithImpl<InitialAuthBlocState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatus status, User? user) initial,
    required TResult Function(AuthenticationStatus status, User? user)
        authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() unknown,
  }) {
    return initial(status, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status, User? user)? initial,
    TResult Function(AuthenticationStatus status, User? user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(status, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAuthBlocState value) initial,
    required TResult Function(AuthenticatedAuthBlocState value) authenticated,
    required TResult Function(UnauthenticatedAuthBlocState value)
        unauthenticated,
    required TResult Function(UnknownAuthBlocState value) unknown,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAuthBlocState value)? initial,
    TResult Function(AuthenticatedAuthBlocState value)? authenticated,
    TResult Function(UnauthenticatedAuthBlocState value)? unauthenticated,
    TResult Function(UnknownAuthBlocState value)? unknown,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialAuthBlocState extends AuthBlocState {
  const InitialAuthBlocState._() : super._();
  const factory InitialAuthBlocState(AuthenticationStatus status, User? user) =
      _$InitialAuthBlocState;

  AuthenticationStatus get status => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitialAuthBlocStateCopyWith<InitialAuthBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatedAuthBlocStateCopyWith<$Res> {
  factory $AuthenticatedAuthBlocStateCopyWith(AuthenticatedAuthBlocState value,
          $Res Function(AuthenticatedAuthBlocState) then) =
      _$AuthenticatedAuthBlocStateCopyWithImpl<$Res>;
  $Res call({AuthenticationStatus status, User? user});
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

  @override
  $Res call({
    Object? status = freezed,
    Object? user = freezed,
  }) {
    return _then(AuthenticatedAuthBlocState(
      status == freezed ? _value.status : status as AuthenticationStatus,
      user == freezed ? _value.user : user as User?,
    ));
  }
}

/// @nodoc
class _$AuthenticatedAuthBlocState extends AuthenticatedAuthBlocState {
  const _$AuthenticatedAuthBlocState(this.status, this.user) : super._();

  @override
  final AuthenticationStatus status;
  @override
  final User? user;

  @override
  String toString() {
    return 'AuthBlocState.authenticated(status: $status, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthenticatedAuthBlocState &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $AuthenticatedAuthBlocStateCopyWith<AuthenticatedAuthBlocState>
      get copyWith =>
          _$AuthenticatedAuthBlocStateCopyWithImpl<AuthenticatedAuthBlocState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatus status, User? user) initial,
    required TResult Function(AuthenticationStatus status, User? user)
        authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() unknown,
  }) {
    return authenticated(status, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status, User? user)? initial,
    TResult Function(AuthenticationStatus status, User? user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(status, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAuthBlocState value) initial,
    required TResult Function(AuthenticatedAuthBlocState value) authenticated,
    required TResult Function(UnauthenticatedAuthBlocState value)
        unauthenticated,
    required TResult Function(UnknownAuthBlocState value) unknown,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAuthBlocState value)? initial,
    TResult Function(AuthenticatedAuthBlocState value)? authenticated,
    TResult Function(UnauthenticatedAuthBlocState value)? unauthenticated,
    TResult Function(UnknownAuthBlocState value)? unknown,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AuthenticatedAuthBlocState extends AuthBlocState {
  const AuthenticatedAuthBlocState._() : super._();
  const factory AuthenticatedAuthBlocState(
      AuthenticationStatus status, User? user) = _$AuthenticatedAuthBlocState;

  AuthenticationStatus get status => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticatedAuthBlocStateCopyWith<AuthenticatedAuthBlocState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnauthenticatedAuthBlocStateCopyWith<$Res> {
  factory $UnauthenticatedAuthBlocStateCopyWith(
          UnauthenticatedAuthBlocState value,
          $Res Function(UnauthenticatedAuthBlocState) then) =
      _$UnauthenticatedAuthBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnauthenticatedAuthBlocStateCopyWithImpl<$Res>
    extends _$AuthBlocStateCopyWithImpl<$Res>
    implements $UnauthenticatedAuthBlocStateCopyWith<$Res> {
  _$UnauthenticatedAuthBlocStateCopyWithImpl(
      UnauthenticatedAuthBlocState _value,
      $Res Function(UnauthenticatedAuthBlocState) _then)
      : super(_value, (v) => _then(v as UnauthenticatedAuthBlocState));

  @override
  UnauthenticatedAuthBlocState get _value =>
      super._value as UnauthenticatedAuthBlocState;
}

/// @nodoc
class _$UnauthenticatedAuthBlocState extends UnauthenticatedAuthBlocState {
  const _$UnauthenticatedAuthBlocState() : super._();

  @override
  String toString() {
    return 'AuthBlocState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnauthenticatedAuthBlocState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatus status, User? user) initial,
    required TResult Function(AuthenticationStatus status, User? user)
        authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() unknown,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status, User? user)? initial,
    TResult Function(AuthenticationStatus status, User? user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAuthBlocState value) initial,
    required TResult Function(AuthenticatedAuthBlocState value) authenticated,
    required TResult Function(UnauthenticatedAuthBlocState value)
        unauthenticated,
    required TResult Function(UnknownAuthBlocState value) unknown,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAuthBlocState value)? initial,
    TResult Function(AuthenticatedAuthBlocState value)? authenticated,
    TResult Function(UnauthenticatedAuthBlocState value)? unauthenticated,
    TResult Function(UnknownAuthBlocState value)? unknown,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class UnauthenticatedAuthBlocState extends AuthBlocState {
  const UnauthenticatedAuthBlocState._() : super._();
  const factory UnauthenticatedAuthBlocState() = _$UnauthenticatedAuthBlocState;
}

/// @nodoc
abstract class $UnknownAuthBlocStateCopyWith<$Res> {
  factory $UnknownAuthBlocStateCopyWith(UnknownAuthBlocState value,
          $Res Function(UnknownAuthBlocState) then) =
      _$UnknownAuthBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnknownAuthBlocStateCopyWithImpl<$Res>
    extends _$AuthBlocStateCopyWithImpl<$Res>
    implements $UnknownAuthBlocStateCopyWith<$Res> {
  _$UnknownAuthBlocStateCopyWithImpl(
      UnknownAuthBlocState _value, $Res Function(UnknownAuthBlocState) _then)
      : super(_value, (v) => _then(v as UnknownAuthBlocState));

  @override
  UnknownAuthBlocState get _value => super._value as UnknownAuthBlocState;
}

/// @nodoc
class _$UnknownAuthBlocState extends UnknownAuthBlocState {
  const _$UnknownAuthBlocState() : super._();

  @override
  String toString() {
    return 'AuthBlocState.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnknownAuthBlocState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatus status, User? user) initial,
    required TResult Function(AuthenticationStatus status, User? user)
        authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status, User? user)? initial,
    TResult Function(AuthenticationStatus status, User? user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAuthBlocState value) initial,
    required TResult Function(AuthenticatedAuthBlocState value) authenticated,
    required TResult Function(UnauthenticatedAuthBlocState value)
        unauthenticated,
    required TResult Function(UnknownAuthBlocState value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAuthBlocState value)? initial,
    TResult Function(AuthenticatedAuthBlocState value)? authenticated,
    TResult Function(UnauthenticatedAuthBlocState value)? unauthenticated,
    TResult Function(UnknownAuthBlocState value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownAuthBlocState extends AuthBlocState {
  const UnknownAuthBlocState._() : super._();
  const factory UnknownAuthBlocState() = _$UnknownAuthBlocState;
}
