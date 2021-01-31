// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notebook.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Notebook _$_$_NotebookFromJson(Map<String, dynamic> json) {
  return _$_Notebook(
    (json['notes'] as List)
        ?.map(
            (e) => e == null ? null : Note.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_NotebookToJson(_$_Notebook instance) =>
    <String, dynamic>{
      'notes': instance.notes,
    };
