// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'notebook.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Notebook _$NotebookFromJson(Map<String, dynamic> json) {
  return _Notebook.fromJson(json);
}

/// @nodoc
class _$NotebookTearOff {
  const _$NotebookTearOff();

// ignore: unused_element
  _Notebook call(List<Note> notes) {
    return _Notebook(
      notes,
    );
  }

// ignore: unused_element
  Notebook fromJson(Map<String, Object> json) {
    return Notebook.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Notebook = _$NotebookTearOff();

/// @nodoc
mixin _$Notebook {
  List<Note> get notes;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $NotebookCopyWith<Notebook> get copyWith;
}

/// @nodoc
abstract class $NotebookCopyWith<$Res> {
  factory $NotebookCopyWith(Notebook value, $Res Function(Notebook) then) =
      _$NotebookCopyWithImpl<$Res>;
  $Res call({List<Note> notes});
}

/// @nodoc
class _$NotebookCopyWithImpl<$Res> implements $NotebookCopyWith<$Res> {
  _$NotebookCopyWithImpl(this._value, this._then);

  final Notebook _value;
  // ignore: unused_field
  final $Res Function(Notebook) _then;

  @override
  $Res call({
    Object notes = freezed,
  }) {
    return _then(_value.copyWith(
      notes: notes == freezed ? _value.notes : notes as List<Note>,
    ));
  }
}

/// @nodoc
abstract class _$NotebookCopyWith<$Res> implements $NotebookCopyWith<$Res> {
  factory _$NotebookCopyWith(_Notebook value, $Res Function(_Notebook) then) =
      __$NotebookCopyWithImpl<$Res>;
  @override
  $Res call({List<Note> notes});
}

/// @nodoc
class __$NotebookCopyWithImpl<$Res> extends _$NotebookCopyWithImpl<$Res>
    implements _$NotebookCopyWith<$Res> {
  __$NotebookCopyWithImpl(_Notebook _value, $Res Function(_Notebook) _then)
      : super(_value, (v) => _then(v as _Notebook));

  @override
  _Notebook get _value => super._value as _Notebook;

  @override
  $Res call({
    Object notes = freezed,
  }) {
    return _then(_Notebook(
      notes == freezed ? _value.notes : notes as List<Note>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Notebook implements _Notebook {
  _$_Notebook(this.notes) : assert(notes != null);

  factory _$_Notebook.fromJson(Map<String, dynamic> json) =>
      _$_$_NotebookFromJson(json);

  @override
  final List<Note> notes;

  @override
  String toString() {
    return 'Notebook(notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Notebook &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(notes);

  @JsonKey(ignore: true)
  @override
  _$NotebookCopyWith<_Notebook> get copyWith =>
      __$NotebookCopyWithImpl<_Notebook>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NotebookToJson(this);
  }
}

abstract class _Notebook implements Notebook {
  factory _Notebook(List<Note> notes) = _$_Notebook;

  factory _Notebook.fromJson(Map<String, dynamic> json) = _$_Notebook.fromJson;

  @override
  List<Note> get notes;
  @override
  @JsonKey(ignore: true)
  _$NotebookCopyWith<_Notebook> get copyWith;
}
