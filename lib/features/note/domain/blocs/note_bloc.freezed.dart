// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'note_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NoteBlocEventTearOff {
  const _$NoteBlocEventTearOff();

  CreateNoteBlocEvent create(Note note) {
    return CreateNoteBlocEvent(
      note,
    );
  }

  ReadNoteBlocEvent read(int noteId) {
    return ReadNoteBlocEvent(
      noteId,
    );
  }

  UpdateNoteBlocEvent update() {
    return const UpdateNoteBlocEvent();
  }

  DeleteNoteBlocEvent delete() {
    return const DeleteNoteBlocEvent();
  }
}

/// @nodoc
const $NoteBlocEvent = _$NoteBlocEventTearOff();

/// @nodoc
mixin _$NoteBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note note) create,
    required TResult Function(int noteId) read,
    required TResult Function() update,
    required TResult Function() delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note note)? create,
    TResult Function(int noteId)? read,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateNoteBlocEvent value) create,
    required TResult Function(ReadNoteBlocEvent value) read,
    required TResult Function(UpdateNoteBlocEvent value) update,
    required TResult Function(DeleteNoteBlocEvent value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateNoteBlocEvent value)? create,
    TResult Function(ReadNoteBlocEvent value)? read,
    TResult Function(UpdateNoteBlocEvent value)? update,
    TResult Function(DeleteNoteBlocEvent value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteBlocEventCopyWith<$Res> {
  factory $NoteBlocEventCopyWith(
          NoteBlocEvent value, $Res Function(NoteBlocEvent) then) =
      _$NoteBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteBlocEventCopyWithImpl<$Res>
    implements $NoteBlocEventCopyWith<$Res> {
  _$NoteBlocEventCopyWithImpl(this._value, this._then);

  final NoteBlocEvent _value;
  // ignore: unused_field
  final $Res Function(NoteBlocEvent) _then;
}

/// @nodoc
abstract class $CreateNoteBlocEventCopyWith<$Res> {
  factory $CreateNoteBlocEventCopyWith(
          CreateNoteBlocEvent value, $Res Function(CreateNoteBlocEvent) then) =
      _$CreateNoteBlocEventCopyWithImpl<$Res>;
  $Res call({Note note});
}

/// @nodoc
class _$CreateNoteBlocEventCopyWithImpl<$Res>
    extends _$NoteBlocEventCopyWithImpl<$Res>
    implements $CreateNoteBlocEventCopyWith<$Res> {
  _$CreateNoteBlocEventCopyWithImpl(
      CreateNoteBlocEvent _value, $Res Function(CreateNoteBlocEvent) _then)
      : super(_value, (v) => _then(v as CreateNoteBlocEvent));

  @override
  CreateNoteBlocEvent get _value => super._value as CreateNoteBlocEvent;

  @override
  $Res call({
    Object? note = freezed,
  }) {
    return _then(CreateNoteBlocEvent(
      note == freezed ? _value.note : note as Note,
    ));
  }
}

/// @nodoc
class _$CreateNoteBlocEvent extends CreateNoteBlocEvent {
  const _$CreateNoteBlocEvent(this.note) : super._();

  @override
  final Note note;

  @override
  String toString() {
    return 'NoteBlocEvent.create(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateNoteBlocEvent &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(note);

  @JsonKey(ignore: true)
  @override
  $CreateNoteBlocEventCopyWith<CreateNoteBlocEvent> get copyWith =>
      _$CreateNoteBlocEventCopyWithImpl<CreateNoteBlocEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note note) create,
    required TResult Function(int noteId) read,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return create(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note note)? create,
    TResult Function(int noteId)? read,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateNoteBlocEvent value) create,
    required TResult Function(ReadNoteBlocEvent value) read,
    required TResult Function(UpdateNoteBlocEvent value) update,
    required TResult Function(DeleteNoteBlocEvent value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateNoteBlocEvent value)? create,
    TResult Function(ReadNoteBlocEvent value)? read,
    TResult Function(UpdateNoteBlocEvent value)? update,
    TResult Function(DeleteNoteBlocEvent value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class CreateNoteBlocEvent extends NoteBlocEvent {
  const CreateNoteBlocEvent._() : super._();
  const factory CreateNoteBlocEvent(Note note) = _$CreateNoteBlocEvent;

  Note get note => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateNoteBlocEventCopyWith<CreateNoteBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadNoteBlocEventCopyWith<$Res> {
  factory $ReadNoteBlocEventCopyWith(
          ReadNoteBlocEvent value, $Res Function(ReadNoteBlocEvent) then) =
      _$ReadNoteBlocEventCopyWithImpl<$Res>;
  $Res call({int noteId});
}

/// @nodoc
class _$ReadNoteBlocEventCopyWithImpl<$Res>
    extends _$NoteBlocEventCopyWithImpl<$Res>
    implements $ReadNoteBlocEventCopyWith<$Res> {
  _$ReadNoteBlocEventCopyWithImpl(
      ReadNoteBlocEvent _value, $Res Function(ReadNoteBlocEvent) _then)
      : super(_value, (v) => _then(v as ReadNoteBlocEvent));

  @override
  ReadNoteBlocEvent get _value => super._value as ReadNoteBlocEvent;

  @override
  $Res call({
    Object? noteId = freezed,
  }) {
    return _then(ReadNoteBlocEvent(
      noteId == freezed ? _value.noteId : noteId as int,
    ));
  }
}

/// @nodoc
class _$ReadNoteBlocEvent extends ReadNoteBlocEvent {
  const _$ReadNoteBlocEvent(this.noteId) : super._();

  @override
  final int noteId;

  @override
  String toString() {
    return 'NoteBlocEvent.read(noteId: $noteId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReadNoteBlocEvent &&
            (identical(other.noteId, noteId) ||
                const DeepCollectionEquality().equals(other.noteId, noteId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(noteId);

  @JsonKey(ignore: true)
  @override
  $ReadNoteBlocEventCopyWith<ReadNoteBlocEvent> get copyWith =>
      _$ReadNoteBlocEventCopyWithImpl<ReadNoteBlocEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note note) create,
    required TResult Function(int noteId) read,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return read(noteId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note note)? create,
    TResult Function(int noteId)? read,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(noteId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateNoteBlocEvent value) create,
    required TResult Function(ReadNoteBlocEvent value) read,
    required TResult Function(UpdateNoteBlocEvent value) update,
    required TResult Function(DeleteNoteBlocEvent value) delete,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateNoteBlocEvent value)? create,
    TResult Function(ReadNoteBlocEvent value)? read,
    TResult Function(UpdateNoteBlocEvent value)? update,
    TResult Function(DeleteNoteBlocEvent value)? delete,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class ReadNoteBlocEvent extends NoteBlocEvent {
  const ReadNoteBlocEvent._() : super._();
  const factory ReadNoteBlocEvent(int noteId) = _$ReadNoteBlocEvent;

  int get noteId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReadNoteBlocEventCopyWith<ReadNoteBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateNoteBlocEventCopyWith<$Res> {
  factory $UpdateNoteBlocEventCopyWith(
          UpdateNoteBlocEvent value, $Res Function(UpdateNoteBlocEvent) then) =
      _$UpdateNoteBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateNoteBlocEventCopyWithImpl<$Res>
    extends _$NoteBlocEventCopyWithImpl<$Res>
    implements $UpdateNoteBlocEventCopyWith<$Res> {
  _$UpdateNoteBlocEventCopyWithImpl(
      UpdateNoteBlocEvent _value, $Res Function(UpdateNoteBlocEvent) _then)
      : super(_value, (v) => _then(v as UpdateNoteBlocEvent));

  @override
  UpdateNoteBlocEvent get _value => super._value as UpdateNoteBlocEvent;
}

/// @nodoc
class _$UpdateNoteBlocEvent extends UpdateNoteBlocEvent {
  const _$UpdateNoteBlocEvent() : super._();

  @override
  String toString() {
    return 'NoteBlocEvent.update()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdateNoteBlocEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note note) create,
    required TResult Function(int noteId) read,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return update();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note note)? create,
    TResult Function(int noteId)? read,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateNoteBlocEvent value) create,
    required TResult Function(ReadNoteBlocEvent value) read,
    required TResult Function(UpdateNoteBlocEvent value) update,
    required TResult Function(DeleteNoteBlocEvent value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateNoteBlocEvent value)? create,
    TResult Function(ReadNoteBlocEvent value)? read,
    TResult Function(UpdateNoteBlocEvent value)? update,
    TResult Function(DeleteNoteBlocEvent value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UpdateNoteBlocEvent extends NoteBlocEvent {
  const UpdateNoteBlocEvent._() : super._();
  const factory UpdateNoteBlocEvent() = _$UpdateNoteBlocEvent;
}

/// @nodoc
abstract class $DeleteNoteBlocEventCopyWith<$Res> {
  factory $DeleteNoteBlocEventCopyWith(
          DeleteNoteBlocEvent value, $Res Function(DeleteNoteBlocEvent) then) =
      _$DeleteNoteBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeleteNoteBlocEventCopyWithImpl<$Res>
    extends _$NoteBlocEventCopyWithImpl<$Res>
    implements $DeleteNoteBlocEventCopyWith<$Res> {
  _$DeleteNoteBlocEventCopyWithImpl(
      DeleteNoteBlocEvent _value, $Res Function(DeleteNoteBlocEvent) _then)
      : super(_value, (v) => _then(v as DeleteNoteBlocEvent));

  @override
  DeleteNoteBlocEvent get _value => super._value as DeleteNoteBlocEvent;
}

/// @nodoc
class _$DeleteNoteBlocEvent extends DeleteNoteBlocEvent {
  const _$DeleteNoteBlocEvent() : super._();

  @override
  String toString() {
    return 'NoteBlocEvent.delete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeleteNoteBlocEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Note note) create,
    required TResult Function(int noteId) read,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Note note)? create,
    TResult Function(int noteId)? read,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateNoteBlocEvent value) create,
    required TResult Function(ReadNoteBlocEvent value) read,
    required TResult Function(UpdateNoteBlocEvent value) update,
    required TResult Function(DeleteNoteBlocEvent value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateNoteBlocEvent value)? create,
    TResult Function(ReadNoteBlocEvent value)? read,
    TResult Function(UpdateNoteBlocEvent value)? update,
    TResult Function(DeleteNoteBlocEvent value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class DeleteNoteBlocEvent extends NoteBlocEvent {
  const DeleteNoteBlocEvent._() : super._();
  const factory DeleteNoteBlocEvent() = _$DeleteNoteBlocEvent;
}

/// @nodoc
class _$NoteBlocStateTearOff {
  const _$NoteBlocStateTearOff();

  InitialNoteBlocState initial() {
    return const InitialNoteBlocState();
  }

  LoadedNoteBlocState loaded({Note? note}) {
    return LoadedNoteBlocState(
      note: note,
    );
  }

  UpdatedNoteBlocState updated({Note? note}) {
    return UpdatedNoteBlocState(
      note: note,
    );
  }

  CreatedNoteBlocState created() {
    return const CreatedNoteBlocState();
  }

  DeletedNoteBlocState deleted() {
    return const DeletedNoteBlocState();
  }

  LoadingNoteBlocState loading() {
    return const LoadingNoteBlocState();
  }

  ErrorNoteBlocState error({String? message}) {
    return ErrorNoteBlocState(
      message: message,
    );
  }
}

/// @nodoc
const $NoteBlocState = _$NoteBlocStateTearOff();

/// @nodoc
mixin _$NoteBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Note? note) loaded,
    required TResult Function(Note? note) updated,
    required TResult Function() created,
    required TResult Function() deleted,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Note? note)? loaded,
    TResult Function(Note? note)? updated,
    TResult Function()? created,
    TResult Function()? deleted,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialNoteBlocState value) initial,
    required TResult Function(LoadedNoteBlocState value) loaded,
    required TResult Function(UpdatedNoteBlocState value) updated,
    required TResult Function(CreatedNoteBlocState value) created,
    required TResult Function(DeletedNoteBlocState value) deleted,
    required TResult Function(LoadingNoteBlocState value) loading,
    required TResult Function(ErrorNoteBlocState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialNoteBlocState value)? initial,
    TResult Function(LoadedNoteBlocState value)? loaded,
    TResult Function(UpdatedNoteBlocState value)? updated,
    TResult Function(CreatedNoteBlocState value)? created,
    TResult Function(DeletedNoteBlocState value)? deleted,
    TResult Function(LoadingNoteBlocState value)? loading,
    TResult Function(ErrorNoteBlocState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteBlocStateCopyWith<$Res> {
  factory $NoteBlocStateCopyWith(
          NoteBlocState value, $Res Function(NoteBlocState) then) =
      _$NoteBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteBlocStateCopyWithImpl<$Res>
    implements $NoteBlocStateCopyWith<$Res> {
  _$NoteBlocStateCopyWithImpl(this._value, this._then);

  final NoteBlocState _value;
  // ignore: unused_field
  final $Res Function(NoteBlocState) _then;
}

/// @nodoc
abstract class $InitialNoteBlocStateCopyWith<$Res> {
  factory $InitialNoteBlocStateCopyWith(InitialNoteBlocState value,
          $Res Function(InitialNoteBlocState) then) =
      _$InitialNoteBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialNoteBlocStateCopyWithImpl<$Res>
    extends _$NoteBlocStateCopyWithImpl<$Res>
    implements $InitialNoteBlocStateCopyWith<$Res> {
  _$InitialNoteBlocStateCopyWithImpl(
      InitialNoteBlocState _value, $Res Function(InitialNoteBlocState) _then)
      : super(_value, (v) => _then(v as InitialNoteBlocState));

  @override
  InitialNoteBlocState get _value => super._value as InitialNoteBlocState;
}

/// @nodoc
class _$InitialNoteBlocState extends InitialNoteBlocState {
  const _$InitialNoteBlocState() : super._();

  @override
  String toString() {
    return 'NoteBlocState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialNoteBlocState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Note? note) loaded,
    required TResult Function(Note? note) updated,
    required TResult Function() created,
    required TResult Function() deleted,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Note? note)? loaded,
    TResult Function(Note? note)? updated,
    TResult Function()? created,
    TResult Function()? deleted,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialNoteBlocState value) initial,
    required TResult Function(LoadedNoteBlocState value) loaded,
    required TResult Function(UpdatedNoteBlocState value) updated,
    required TResult Function(CreatedNoteBlocState value) created,
    required TResult Function(DeletedNoteBlocState value) deleted,
    required TResult Function(LoadingNoteBlocState value) loading,
    required TResult Function(ErrorNoteBlocState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialNoteBlocState value)? initial,
    TResult Function(LoadedNoteBlocState value)? loaded,
    TResult Function(UpdatedNoteBlocState value)? updated,
    TResult Function(CreatedNoteBlocState value)? created,
    TResult Function(DeletedNoteBlocState value)? deleted,
    TResult Function(LoadingNoteBlocState value)? loading,
    TResult Function(ErrorNoteBlocState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialNoteBlocState extends NoteBlocState {
  const InitialNoteBlocState._() : super._();
  const factory InitialNoteBlocState() = _$InitialNoteBlocState;
}

/// @nodoc
abstract class $LoadedNoteBlocStateCopyWith<$Res> {
  factory $LoadedNoteBlocStateCopyWith(
          LoadedNoteBlocState value, $Res Function(LoadedNoteBlocState) then) =
      _$LoadedNoteBlocStateCopyWithImpl<$Res>;
  $Res call({Note? note});
}

/// @nodoc
class _$LoadedNoteBlocStateCopyWithImpl<$Res>
    extends _$NoteBlocStateCopyWithImpl<$Res>
    implements $LoadedNoteBlocStateCopyWith<$Res> {
  _$LoadedNoteBlocStateCopyWithImpl(
      LoadedNoteBlocState _value, $Res Function(LoadedNoteBlocState) _then)
      : super(_value, (v) => _then(v as LoadedNoteBlocState));

  @override
  LoadedNoteBlocState get _value => super._value as LoadedNoteBlocState;

  @override
  $Res call({
    Object? note = freezed,
  }) {
    return _then(LoadedNoteBlocState(
      note: note == freezed ? _value.note : note as Note?,
    ));
  }
}

/// @nodoc
class _$LoadedNoteBlocState extends LoadedNoteBlocState {
  const _$LoadedNoteBlocState({this.note}) : super._();

  @override
  final Note? note;

  @override
  String toString() {
    return 'NoteBlocState.loaded(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedNoteBlocState &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(note);

  @JsonKey(ignore: true)
  @override
  $LoadedNoteBlocStateCopyWith<LoadedNoteBlocState> get copyWith =>
      _$LoadedNoteBlocStateCopyWithImpl<LoadedNoteBlocState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Note? note) loaded,
    required TResult Function(Note? note) updated,
    required TResult Function() created,
    required TResult Function() deleted,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return loaded(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Note? note)? loaded,
    TResult Function(Note? note)? updated,
    TResult Function()? created,
    TResult Function()? deleted,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialNoteBlocState value) initial,
    required TResult Function(LoadedNoteBlocState value) loaded,
    required TResult Function(UpdatedNoteBlocState value) updated,
    required TResult Function(CreatedNoteBlocState value) created,
    required TResult Function(DeletedNoteBlocState value) deleted,
    required TResult Function(LoadingNoteBlocState value) loading,
    required TResult Function(ErrorNoteBlocState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialNoteBlocState value)? initial,
    TResult Function(LoadedNoteBlocState value)? loaded,
    TResult Function(UpdatedNoteBlocState value)? updated,
    TResult Function(CreatedNoteBlocState value)? created,
    TResult Function(DeletedNoteBlocState value)? deleted,
    TResult Function(LoadingNoteBlocState value)? loading,
    TResult Function(ErrorNoteBlocState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedNoteBlocState extends NoteBlocState {
  const LoadedNoteBlocState._() : super._();
  const factory LoadedNoteBlocState({Note? note}) = _$LoadedNoteBlocState;

  Note? get note => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedNoteBlocStateCopyWith<LoadedNoteBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatedNoteBlocStateCopyWith<$Res> {
  factory $UpdatedNoteBlocStateCopyWith(UpdatedNoteBlocState value,
          $Res Function(UpdatedNoteBlocState) then) =
      _$UpdatedNoteBlocStateCopyWithImpl<$Res>;
  $Res call({Note? note});
}

/// @nodoc
class _$UpdatedNoteBlocStateCopyWithImpl<$Res>
    extends _$NoteBlocStateCopyWithImpl<$Res>
    implements $UpdatedNoteBlocStateCopyWith<$Res> {
  _$UpdatedNoteBlocStateCopyWithImpl(
      UpdatedNoteBlocState _value, $Res Function(UpdatedNoteBlocState) _then)
      : super(_value, (v) => _then(v as UpdatedNoteBlocState));

  @override
  UpdatedNoteBlocState get _value => super._value as UpdatedNoteBlocState;

  @override
  $Res call({
    Object? note = freezed,
  }) {
    return _then(UpdatedNoteBlocState(
      note: note == freezed ? _value.note : note as Note?,
    ));
  }
}

/// @nodoc
class _$UpdatedNoteBlocState extends UpdatedNoteBlocState {
  const _$UpdatedNoteBlocState({this.note}) : super._();

  @override
  final Note? note;

  @override
  String toString() {
    return 'NoteBlocState.updated(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdatedNoteBlocState &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(note);

  @JsonKey(ignore: true)
  @override
  $UpdatedNoteBlocStateCopyWith<UpdatedNoteBlocState> get copyWith =>
      _$UpdatedNoteBlocStateCopyWithImpl<UpdatedNoteBlocState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Note? note) loaded,
    required TResult Function(Note? note) updated,
    required TResult Function() created,
    required TResult Function() deleted,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return updated(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Note? note)? loaded,
    TResult Function(Note? note)? updated,
    TResult Function()? created,
    TResult Function()? deleted,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialNoteBlocState value) initial,
    required TResult Function(LoadedNoteBlocState value) loaded,
    required TResult Function(UpdatedNoteBlocState value) updated,
    required TResult Function(CreatedNoteBlocState value) created,
    required TResult Function(DeletedNoteBlocState value) deleted,
    required TResult Function(LoadingNoteBlocState value) loading,
    required TResult Function(ErrorNoteBlocState value) error,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialNoteBlocState value)? initial,
    TResult Function(LoadedNoteBlocState value)? loaded,
    TResult Function(UpdatedNoteBlocState value)? updated,
    TResult Function(CreatedNoteBlocState value)? created,
    TResult Function(DeletedNoteBlocState value)? deleted,
    TResult Function(LoadingNoteBlocState value)? loading,
    TResult Function(ErrorNoteBlocState value)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class UpdatedNoteBlocState extends NoteBlocState {
  const UpdatedNoteBlocState._() : super._();
  const factory UpdatedNoteBlocState({Note? note}) = _$UpdatedNoteBlocState;

  Note? get note => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdatedNoteBlocStateCopyWith<UpdatedNoteBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatedNoteBlocStateCopyWith<$Res> {
  factory $CreatedNoteBlocStateCopyWith(CreatedNoteBlocState value,
          $Res Function(CreatedNoteBlocState) then) =
      _$CreatedNoteBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreatedNoteBlocStateCopyWithImpl<$Res>
    extends _$NoteBlocStateCopyWithImpl<$Res>
    implements $CreatedNoteBlocStateCopyWith<$Res> {
  _$CreatedNoteBlocStateCopyWithImpl(
      CreatedNoteBlocState _value, $Res Function(CreatedNoteBlocState) _then)
      : super(_value, (v) => _then(v as CreatedNoteBlocState));

  @override
  CreatedNoteBlocState get _value => super._value as CreatedNoteBlocState;
}

/// @nodoc
class _$CreatedNoteBlocState extends CreatedNoteBlocState {
  const _$CreatedNoteBlocState() : super._();

  @override
  String toString() {
    return 'NoteBlocState.created()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CreatedNoteBlocState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Note? note) loaded,
    required TResult Function(Note? note) updated,
    required TResult Function() created,
    required TResult Function() deleted,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return created();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Note? note)? loaded,
    TResult Function(Note? note)? updated,
    TResult Function()? created,
    TResult Function()? deleted,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialNoteBlocState value) initial,
    required TResult Function(LoadedNoteBlocState value) loaded,
    required TResult Function(UpdatedNoteBlocState value) updated,
    required TResult Function(CreatedNoteBlocState value) created,
    required TResult Function(DeletedNoteBlocState value) deleted,
    required TResult Function(LoadingNoteBlocState value) loading,
    required TResult Function(ErrorNoteBlocState value) error,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialNoteBlocState value)? initial,
    TResult Function(LoadedNoteBlocState value)? loaded,
    TResult Function(UpdatedNoteBlocState value)? updated,
    TResult Function(CreatedNoteBlocState value)? created,
    TResult Function(DeletedNoteBlocState value)? deleted,
    TResult Function(LoadingNoteBlocState value)? loading,
    TResult Function(ErrorNoteBlocState value)? error,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class CreatedNoteBlocState extends NoteBlocState {
  const CreatedNoteBlocState._() : super._();
  const factory CreatedNoteBlocState() = _$CreatedNoteBlocState;
}

/// @nodoc
abstract class $DeletedNoteBlocStateCopyWith<$Res> {
  factory $DeletedNoteBlocStateCopyWith(DeletedNoteBlocState value,
          $Res Function(DeletedNoteBlocState) then) =
      _$DeletedNoteBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeletedNoteBlocStateCopyWithImpl<$Res>
    extends _$NoteBlocStateCopyWithImpl<$Res>
    implements $DeletedNoteBlocStateCopyWith<$Res> {
  _$DeletedNoteBlocStateCopyWithImpl(
      DeletedNoteBlocState _value, $Res Function(DeletedNoteBlocState) _then)
      : super(_value, (v) => _then(v as DeletedNoteBlocState));

  @override
  DeletedNoteBlocState get _value => super._value as DeletedNoteBlocState;
}

/// @nodoc
class _$DeletedNoteBlocState extends DeletedNoteBlocState {
  const _$DeletedNoteBlocState() : super._();

  @override
  String toString() {
    return 'NoteBlocState.deleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeletedNoteBlocState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Note? note) loaded,
    required TResult Function(Note? note) updated,
    required TResult Function() created,
    required TResult Function() deleted,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return deleted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Note? note)? loaded,
    TResult Function(Note? note)? updated,
    TResult Function()? created,
    TResult Function()? deleted,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialNoteBlocState value) initial,
    required TResult Function(LoadedNoteBlocState value) loaded,
    required TResult Function(UpdatedNoteBlocState value) updated,
    required TResult Function(CreatedNoteBlocState value) created,
    required TResult Function(DeletedNoteBlocState value) deleted,
    required TResult Function(LoadingNoteBlocState value) loading,
    required TResult Function(ErrorNoteBlocState value) error,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialNoteBlocState value)? initial,
    TResult Function(LoadedNoteBlocState value)? loaded,
    TResult Function(UpdatedNoteBlocState value)? updated,
    TResult Function(CreatedNoteBlocState value)? created,
    TResult Function(DeletedNoteBlocState value)? deleted,
    TResult Function(LoadingNoteBlocState value)? loading,
    TResult Function(ErrorNoteBlocState value)? error,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class DeletedNoteBlocState extends NoteBlocState {
  const DeletedNoteBlocState._() : super._();
  const factory DeletedNoteBlocState() = _$DeletedNoteBlocState;
}

/// @nodoc
abstract class $LoadingNoteBlocStateCopyWith<$Res> {
  factory $LoadingNoteBlocStateCopyWith(LoadingNoteBlocState value,
          $Res Function(LoadingNoteBlocState) then) =
      _$LoadingNoteBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingNoteBlocStateCopyWithImpl<$Res>
    extends _$NoteBlocStateCopyWithImpl<$Res>
    implements $LoadingNoteBlocStateCopyWith<$Res> {
  _$LoadingNoteBlocStateCopyWithImpl(
      LoadingNoteBlocState _value, $Res Function(LoadingNoteBlocState) _then)
      : super(_value, (v) => _then(v as LoadingNoteBlocState));

  @override
  LoadingNoteBlocState get _value => super._value as LoadingNoteBlocState;
}

/// @nodoc
class _$LoadingNoteBlocState extends LoadingNoteBlocState {
  const _$LoadingNoteBlocState() : super._();

  @override
  String toString() {
    return 'NoteBlocState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingNoteBlocState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Note? note) loaded,
    required TResult Function(Note? note) updated,
    required TResult Function() created,
    required TResult Function() deleted,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Note? note)? loaded,
    TResult Function(Note? note)? updated,
    TResult Function()? created,
    TResult Function()? deleted,
    TResult Function()? loading,
    TResult Function(String? message)? error,
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
    required TResult Function(InitialNoteBlocState value) initial,
    required TResult Function(LoadedNoteBlocState value) loaded,
    required TResult Function(UpdatedNoteBlocState value) updated,
    required TResult Function(CreatedNoteBlocState value) created,
    required TResult Function(DeletedNoteBlocState value) deleted,
    required TResult Function(LoadingNoteBlocState value) loading,
    required TResult Function(ErrorNoteBlocState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialNoteBlocState value)? initial,
    TResult Function(LoadedNoteBlocState value)? loaded,
    TResult Function(UpdatedNoteBlocState value)? updated,
    TResult Function(CreatedNoteBlocState value)? created,
    TResult Function(DeletedNoteBlocState value)? deleted,
    TResult Function(LoadingNoteBlocState value)? loading,
    TResult Function(ErrorNoteBlocState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingNoteBlocState extends NoteBlocState {
  const LoadingNoteBlocState._() : super._();
  const factory LoadingNoteBlocState() = _$LoadingNoteBlocState;
}

/// @nodoc
abstract class $ErrorNoteBlocStateCopyWith<$Res> {
  factory $ErrorNoteBlocStateCopyWith(
          ErrorNoteBlocState value, $Res Function(ErrorNoteBlocState) then) =
      _$ErrorNoteBlocStateCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$ErrorNoteBlocStateCopyWithImpl<$Res>
    extends _$NoteBlocStateCopyWithImpl<$Res>
    implements $ErrorNoteBlocStateCopyWith<$Res> {
  _$ErrorNoteBlocStateCopyWithImpl(
      ErrorNoteBlocState _value, $Res Function(ErrorNoteBlocState) _then)
      : super(_value, (v) => _then(v as ErrorNoteBlocState));

  @override
  ErrorNoteBlocState get _value => super._value as ErrorNoteBlocState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ErrorNoteBlocState(
      message: message == freezed ? _value.message : message as String?,
    ));
  }
}

/// @nodoc
class _$ErrorNoteBlocState extends ErrorNoteBlocState {
  const _$ErrorNoteBlocState({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'NoteBlocState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorNoteBlocState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ErrorNoteBlocStateCopyWith<ErrorNoteBlocState> get copyWith =>
      _$ErrorNoteBlocStateCopyWithImpl<ErrorNoteBlocState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Note? note) loaded,
    required TResult Function(Note? note) updated,
    required TResult Function() created,
    required TResult Function() deleted,
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Note? note)? loaded,
    TResult Function(Note? note)? updated,
    TResult Function()? created,
    TResult Function()? deleted,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialNoteBlocState value) initial,
    required TResult Function(LoadedNoteBlocState value) loaded,
    required TResult Function(UpdatedNoteBlocState value) updated,
    required TResult Function(CreatedNoteBlocState value) created,
    required TResult Function(DeletedNoteBlocState value) deleted,
    required TResult Function(LoadingNoteBlocState value) loading,
    required TResult Function(ErrorNoteBlocState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialNoteBlocState value)? initial,
    TResult Function(LoadedNoteBlocState value)? loaded,
    TResult Function(UpdatedNoteBlocState value)? updated,
    TResult Function(CreatedNoteBlocState value)? created,
    TResult Function(DeletedNoteBlocState value)? deleted,
    TResult Function(LoadingNoteBlocState value)? loading,
    TResult Function(ErrorNoteBlocState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorNoteBlocState extends NoteBlocState {
  const ErrorNoteBlocState._() : super._();
  const factory ErrorNoteBlocState({String? message}) = _$ErrorNoteBlocState;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorNoteBlocStateCopyWith<ErrorNoteBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
