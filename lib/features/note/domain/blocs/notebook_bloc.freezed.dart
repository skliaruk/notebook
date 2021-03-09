// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'notebook_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotebookEventTearOff {
  const _$NotebookEventTearOff();

  HasDataNotebookEvent hasData(List<Note> notes) {
    return HasDataNotebookEvent(
      notes,
    );
  }
}

/// @nodoc
const $NotebookEvent = _$NotebookEventTearOff();

/// @nodoc
mixin _$NotebookEvent {
  List<Note> get notes => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Note> notes) hasData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Note> notes)? hasData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HasDataNotebookEvent value) hasData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HasDataNotebookEvent value)? hasData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotebookEventCopyWith<NotebookEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotebookEventCopyWith<$Res> {
  factory $NotebookEventCopyWith(
          NotebookEvent value, $Res Function(NotebookEvent) then) =
      _$NotebookEventCopyWithImpl<$Res>;
  $Res call({List<Note> notes});
}

/// @nodoc
class _$NotebookEventCopyWithImpl<$Res>
    implements $NotebookEventCopyWith<$Res> {
  _$NotebookEventCopyWithImpl(this._value, this._then);

  final NotebookEvent _value;
  // ignore: unused_field
  final $Res Function(NotebookEvent) _then;

  @override
  $Res call({
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      notes: notes == freezed ? _value.notes : notes as List<Note>,
    ));
  }
}

/// @nodoc
abstract class $HasDataNotebookEventCopyWith<$Res>
    implements $NotebookEventCopyWith<$Res> {
  factory $HasDataNotebookEventCopyWith(HasDataNotebookEvent value,
          $Res Function(HasDataNotebookEvent) then) =
      _$HasDataNotebookEventCopyWithImpl<$Res>;
  @override
  $Res call({List<Note> notes});
}

/// @nodoc
class _$HasDataNotebookEventCopyWithImpl<$Res>
    extends _$NotebookEventCopyWithImpl<$Res>
    implements $HasDataNotebookEventCopyWith<$Res> {
  _$HasDataNotebookEventCopyWithImpl(
      HasDataNotebookEvent _value, $Res Function(HasDataNotebookEvent) _then)
      : super(_value, (v) => _then(v as HasDataNotebookEvent));

  @override
  HasDataNotebookEvent get _value => super._value as HasDataNotebookEvent;

  @override
  $Res call({
    Object? notes = freezed,
  }) {
    return _then(HasDataNotebookEvent(
      notes == freezed ? _value.notes : notes as List<Note>,
    ));
  }
}

/// @nodoc
class _$HasDataNotebookEvent extends HasDataNotebookEvent {
  const _$HasDataNotebookEvent(this.notes) : super._();

  @override
  final List<Note> notes;

  @override
  String toString() {
    return 'NotebookEvent.hasData(notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HasDataNotebookEvent &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(notes);

  @JsonKey(ignore: true)
  @override
  $HasDataNotebookEventCopyWith<HasDataNotebookEvent> get copyWith =>
      _$HasDataNotebookEventCopyWithImpl<HasDataNotebookEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Note> notes) hasData,
  }) {
    return hasData(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Note> notes)? hasData,
    required TResult orElse(),
  }) {
    if (hasData != null) {
      return hasData(notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HasDataNotebookEvent value) hasData,
  }) {
    return hasData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HasDataNotebookEvent value)? hasData,
    required TResult orElse(),
  }) {
    if (hasData != null) {
      return hasData(this);
    }
    return orElse();
  }
}

abstract class HasDataNotebookEvent extends NotebookEvent {
  const HasDataNotebookEvent._() : super._();
  const factory HasDataNotebookEvent(List<Note> notes) = _$HasDataNotebookEvent;

  @override
  List<Note> get notes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $HasDataNotebookEventCopyWith<HasDataNotebookEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NotebookStateTearOff {
  const _$NotebookStateTearOff();

  LoadedNotebookState loaded(List<Note> notes) {
    return LoadedNotebookState(
      notes,
    );
  }

  LoadingNotebookState loading() {
    return const LoadingNotebookState();
  }
}

/// @nodoc
const $NotebookState = _$NotebookStateTearOff();

/// @nodoc
mixin _$NotebookState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Note> notes) loaded,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Note> notes)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadedNotebookState value) loaded,
    required TResult Function(LoadingNotebookState value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadedNotebookState value)? loaded,
    TResult Function(LoadingNotebookState value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotebookStateCopyWith<$Res> {
  factory $NotebookStateCopyWith(
          NotebookState value, $Res Function(NotebookState) then) =
      _$NotebookStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotebookStateCopyWithImpl<$Res>
    implements $NotebookStateCopyWith<$Res> {
  _$NotebookStateCopyWithImpl(this._value, this._then);

  final NotebookState _value;
  // ignore: unused_field
  final $Res Function(NotebookState) _then;
}

/// @nodoc
abstract class $LoadedNotebookStateCopyWith<$Res> {
  factory $LoadedNotebookStateCopyWith(
          LoadedNotebookState value, $Res Function(LoadedNotebookState) then) =
      _$LoadedNotebookStateCopyWithImpl<$Res>;
  $Res call({List<Note> notes});
}

/// @nodoc
class _$LoadedNotebookStateCopyWithImpl<$Res>
    extends _$NotebookStateCopyWithImpl<$Res>
    implements $LoadedNotebookStateCopyWith<$Res> {
  _$LoadedNotebookStateCopyWithImpl(
      LoadedNotebookState _value, $Res Function(LoadedNotebookState) _then)
      : super(_value, (v) => _then(v as LoadedNotebookState));

  @override
  LoadedNotebookState get _value => super._value as LoadedNotebookState;

  @override
  $Res call({
    Object? notes = freezed,
  }) {
    return _then(LoadedNotebookState(
      notes == freezed ? _value.notes : notes as List<Note>,
    ));
  }
}

/// @nodoc
class _$LoadedNotebookState extends LoadedNotebookState {
  const _$LoadedNotebookState(this.notes) : super._();

  @override
  final List<Note> notes;

  @override
  String toString() {
    return 'NotebookState.loaded(notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedNotebookState &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(notes);

  @JsonKey(ignore: true)
  @override
  $LoadedNotebookStateCopyWith<LoadedNotebookState> get copyWith =>
      _$LoadedNotebookStateCopyWithImpl<LoadedNotebookState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Note> notes) loaded,
    required TResult Function() loading,
  }) {
    return loaded(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Note> notes)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadedNotebookState value) loaded,
    required TResult Function(LoadingNotebookState value) loading,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadedNotebookState value)? loaded,
    TResult Function(LoadingNotebookState value)? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedNotebookState extends NotebookState {
  const LoadedNotebookState._() : super._();
  const factory LoadedNotebookState(List<Note> notes) = _$LoadedNotebookState;

  List<Note> get notes => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedNotebookStateCopyWith<LoadedNotebookState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingNotebookStateCopyWith<$Res> {
  factory $LoadingNotebookStateCopyWith(LoadingNotebookState value,
          $Res Function(LoadingNotebookState) then) =
      _$LoadingNotebookStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingNotebookStateCopyWithImpl<$Res>
    extends _$NotebookStateCopyWithImpl<$Res>
    implements $LoadingNotebookStateCopyWith<$Res> {
  _$LoadingNotebookStateCopyWithImpl(
      LoadingNotebookState _value, $Res Function(LoadingNotebookState) _then)
      : super(_value, (v) => _then(v as LoadingNotebookState));

  @override
  LoadingNotebookState get _value => super._value as LoadingNotebookState;
}

/// @nodoc
class _$LoadingNotebookState extends LoadingNotebookState {
  const _$LoadingNotebookState() : super._();

  @override
  String toString() {
    return 'NotebookState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingNotebookState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Note> notes) loaded,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Note> notes)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadedNotebookState value) loaded,
    required TResult Function(LoadingNotebookState value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadedNotebookState value)? loaded,
    TResult Function(LoadingNotebookState value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingNotebookState extends NotebookState {
  const LoadingNotebookState._() : super._();
  const factory LoadingNotebookState() = _$LoadingNotebookState;
}
