// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  InitialLoginState initial({required LoginStatus status}) {
    return InitialLoginState(
      status: status,
    );
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  LoginStatus get status => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginStatus status) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginStatus status)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLoginState value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLoginState value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call({LoginStatus status});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed ? _value.status : status as LoginStatus,
    ));
  }
}

/// @nodoc
abstract class $InitialLoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory $InitialLoginStateCopyWith(
          InitialLoginState value, $Res Function(InitialLoginState) then) =
      _$InitialLoginStateCopyWithImpl<$Res>;
  @override
  $Res call({LoginStatus status});
}

/// @nodoc
class _$InitialLoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements $InitialLoginStateCopyWith<$Res> {
  _$InitialLoginStateCopyWithImpl(
      InitialLoginState _value, $Res Function(InitialLoginState) _then)
      : super(_value, (v) => _then(v as InitialLoginState));

  @override
  InitialLoginState get _value => super._value as InitialLoginState;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(InitialLoginState(
      status: status == freezed ? _value.status : status as LoginStatus,
    ));
  }
}

/// @nodoc
class _$InitialLoginState extends InitialLoginState {
  const _$InitialLoginState({required this.status}) : super._();

  @override
  final LoginStatus status;

  @override
  String toString() {
    return 'LoginState.initial(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitialLoginState &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  $InitialLoginStateCopyWith<InitialLoginState> get copyWith =>
      _$InitialLoginStateCopyWithImpl<InitialLoginState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginStatus status) initial,
  }) {
    return initial(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginStatus status)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLoginState value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLoginState value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialLoginState extends LoginState {
  const InitialLoginState._() : super._();
  const factory InitialLoginState({required LoginStatus status}) =
      _$InitialLoginState;

  @override
  LoginStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InitialLoginStateCopyWith<InitialLoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
