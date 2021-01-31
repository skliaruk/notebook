// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoginBlocEventTearOff {
  const _$LoginBlocEventTearOff();

// ignore: unused_element
  UsernameChangedLoginBlocEvent username() {
    return const UsernameChangedLoginBlocEvent();
  }

// ignore: unused_element
  PasswordChangedLoginBlocEvent password() {
    return const PasswordChangedLoginBlocEvent();
  }

// ignore: unused_element
  SubmitLoginBlocEvent submit() {
    return const SubmitLoginBlocEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $LoginBlocEvent = _$LoginBlocEventTearOff();

/// @nodoc
mixin _$LoginBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult username(),
    @required TResult password(),
    @required TResult submit(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult username(),
    TResult password(),
    TResult submit(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult username(UsernameChangedLoginBlocEvent value),
    @required TResult password(PasswordChangedLoginBlocEvent value),
    @required TResult submit(SubmitLoginBlocEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult username(UsernameChangedLoginBlocEvent value),
    TResult password(PasswordChangedLoginBlocEvent value),
    TResult submit(SubmitLoginBlocEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LoginBlocEventCopyWith<$Res> {
  factory $LoginBlocEventCopyWith(
          LoginBlocEvent value, $Res Function(LoginBlocEvent) then) =
      _$LoginBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginBlocEventCopyWithImpl<$Res>
    implements $LoginBlocEventCopyWith<$Res> {
  _$LoginBlocEventCopyWithImpl(this._value, this._then);

  final LoginBlocEvent _value;
  // ignore: unused_field
  final $Res Function(LoginBlocEvent) _then;
}

/// @nodoc
abstract class $UsernameChangedLoginBlocEventCopyWith<$Res> {
  factory $UsernameChangedLoginBlocEventCopyWith(
          UsernameChangedLoginBlocEvent value,
          $Res Function(UsernameChangedLoginBlocEvent) then) =
      _$UsernameChangedLoginBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsernameChangedLoginBlocEventCopyWithImpl<$Res>
    extends _$LoginBlocEventCopyWithImpl<$Res>
    implements $UsernameChangedLoginBlocEventCopyWith<$Res> {
  _$UsernameChangedLoginBlocEventCopyWithImpl(
      UsernameChangedLoginBlocEvent _value,
      $Res Function(UsernameChangedLoginBlocEvent) _then)
      : super(_value, (v) => _then(v as UsernameChangedLoginBlocEvent));

  @override
  UsernameChangedLoginBlocEvent get _value =>
      super._value as UsernameChangedLoginBlocEvent;
}

/// @nodoc
class _$UsernameChangedLoginBlocEvent extends UsernameChangedLoginBlocEvent {
  const _$UsernameChangedLoginBlocEvent() : super._();

  @override
  String toString() {
    return 'LoginBlocEvent.username()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UsernameChangedLoginBlocEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult username(),
    @required TResult password(),
    @required TResult submit(),
  }) {
    assert(username != null);
    assert(password != null);
    assert(submit != null);
    return username();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult username(),
    TResult password(),
    TResult submit(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (username != null) {
      return username();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult username(UsernameChangedLoginBlocEvent value),
    @required TResult password(PasswordChangedLoginBlocEvent value),
    @required TResult submit(SubmitLoginBlocEvent value),
  }) {
    assert(username != null);
    assert(password != null);
    assert(submit != null);
    return username(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult username(UsernameChangedLoginBlocEvent value),
    TResult password(PasswordChangedLoginBlocEvent value),
    TResult submit(SubmitLoginBlocEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (username != null) {
      return username(this);
    }
    return orElse();
  }
}

abstract class UsernameChangedLoginBlocEvent extends LoginBlocEvent {
  const UsernameChangedLoginBlocEvent._() : super._();
  const factory UsernameChangedLoginBlocEvent() =
      _$UsernameChangedLoginBlocEvent;
}

/// @nodoc
abstract class $PasswordChangedLoginBlocEventCopyWith<$Res> {
  factory $PasswordChangedLoginBlocEventCopyWith(
          PasswordChangedLoginBlocEvent value,
          $Res Function(PasswordChangedLoginBlocEvent) then) =
      _$PasswordChangedLoginBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PasswordChangedLoginBlocEventCopyWithImpl<$Res>
    extends _$LoginBlocEventCopyWithImpl<$Res>
    implements $PasswordChangedLoginBlocEventCopyWith<$Res> {
  _$PasswordChangedLoginBlocEventCopyWithImpl(
      PasswordChangedLoginBlocEvent _value,
      $Res Function(PasswordChangedLoginBlocEvent) _then)
      : super(_value, (v) => _then(v as PasswordChangedLoginBlocEvent));

  @override
  PasswordChangedLoginBlocEvent get _value =>
      super._value as PasswordChangedLoginBlocEvent;
}

/// @nodoc
class _$PasswordChangedLoginBlocEvent extends PasswordChangedLoginBlocEvent {
  const _$PasswordChangedLoginBlocEvent() : super._();

  @override
  String toString() {
    return 'LoginBlocEvent.password()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PasswordChangedLoginBlocEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult username(),
    @required TResult password(),
    @required TResult submit(),
  }) {
    assert(username != null);
    assert(password != null);
    assert(submit != null);
    return password();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult username(),
    TResult password(),
    TResult submit(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (password != null) {
      return password();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult username(UsernameChangedLoginBlocEvent value),
    @required TResult password(PasswordChangedLoginBlocEvent value),
    @required TResult submit(SubmitLoginBlocEvent value),
  }) {
    assert(username != null);
    assert(password != null);
    assert(submit != null);
    return password(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult username(UsernameChangedLoginBlocEvent value),
    TResult password(PasswordChangedLoginBlocEvent value),
    TResult submit(SubmitLoginBlocEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (password != null) {
      return password(this);
    }
    return orElse();
  }
}

abstract class PasswordChangedLoginBlocEvent extends LoginBlocEvent {
  const PasswordChangedLoginBlocEvent._() : super._();
  const factory PasswordChangedLoginBlocEvent() =
      _$PasswordChangedLoginBlocEvent;
}

/// @nodoc
abstract class $SubmitLoginBlocEventCopyWith<$Res> {
  factory $SubmitLoginBlocEventCopyWith(SubmitLoginBlocEvent value,
          $Res Function(SubmitLoginBlocEvent) then) =
      _$SubmitLoginBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmitLoginBlocEventCopyWithImpl<$Res>
    extends _$LoginBlocEventCopyWithImpl<$Res>
    implements $SubmitLoginBlocEventCopyWith<$Res> {
  _$SubmitLoginBlocEventCopyWithImpl(
      SubmitLoginBlocEvent _value, $Res Function(SubmitLoginBlocEvent) _then)
      : super(_value, (v) => _then(v as SubmitLoginBlocEvent));

  @override
  SubmitLoginBlocEvent get _value => super._value as SubmitLoginBlocEvent;
}

/// @nodoc
class _$SubmitLoginBlocEvent extends SubmitLoginBlocEvent {
  const _$SubmitLoginBlocEvent() : super._();

  @override
  String toString() {
    return 'LoginBlocEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SubmitLoginBlocEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult username(),
    @required TResult password(),
    @required TResult submit(),
  }) {
    assert(username != null);
    assert(password != null);
    assert(submit != null);
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult username(),
    TResult password(),
    TResult submit(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult username(UsernameChangedLoginBlocEvent value),
    @required TResult password(PasswordChangedLoginBlocEvent value),
    @required TResult submit(SubmitLoginBlocEvent value),
  }) {
    assert(username != null);
    assert(password != null);
    assert(submit != null);
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult username(UsernameChangedLoginBlocEvent value),
    TResult password(PasswordChangedLoginBlocEvent value),
    TResult submit(SubmitLoginBlocEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class SubmitLoginBlocEvent extends LoginBlocEvent {
  const SubmitLoginBlocEvent._() : super._();
  const factory SubmitLoginBlocEvent() = _$SubmitLoginBlocEvent;
}

/// @nodoc
class _$LoginBlocStateTearOff {
  const _$LoginBlocStateTearOff();

// ignore: unused_element
  InitialLoginBlocState initial() {
    return const InitialLoginBlocState();
  }
}

/// @nodoc
// ignore: unused_element
const $LoginBlocState = _$LoginBlocStateTearOff();

/// @nodoc
mixin _$LoginBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(InitialLoginBlocState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(InitialLoginBlocState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LoginBlocStateCopyWith<$Res> {
  factory $LoginBlocStateCopyWith(
          LoginBlocState value, $Res Function(LoginBlocState) then) =
      _$LoginBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginBlocStateCopyWithImpl<$Res>
    implements $LoginBlocStateCopyWith<$Res> {
  _$LoginBlocStateCopyWithImpl(this._value, this._then);

  final LoginBlocState _value;
  // ignore: unused_field
  final $Res Function(LoginBlocState) _then;
}

/// @nodoc
abstract class $InitialLoginBlocStateCopyWith<$Res> {
  factory $InitialLoginBlocStateCopyWith(InitialLoginBlocState value,
          $Res Function(InitialLoginBlocState) then) =
      _$InitialLoginBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialLoginBlocStateCopyWithImpl<$Res>
    extends _$LoginBlocStateCopyWithImpl<$Res>
    implements $InitialLoginBlocStateCopyWith<$Res> {
  _$InitialLoginBlocStateCopyWithImpl(
      InitialLoginBlocState _value, $Res Function(InitialLoginBlocState) _then)
      : super(_value, (v) => _then(v as InitialLoginBlocState));

  @override
  InitialLoginBlocState get _value => super._value as InitialLoginBlocState;
}

/// @nodoc
class _$InitialLoginBlocState extends InitialLoginBlocState {
  const _$InitialLoginBlocState() : super._();

  @override
  String toString() {
    return 'LoginBlocState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialLoginBlocState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
  }) {
    assert(initial != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
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
    @required TResult initial(InitialLoginBlocState value),
  }) {
    assert(initial != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(InitialLoginBlocState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialLoginBlocState extends LoginBlocState {
  const InitialLoginBlocState._() : super._();
  const factory InitialLoginBlocState() = _$InitialLoginBlocState;
}
