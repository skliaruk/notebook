import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notebook_stable/data/models/note.dart';

part 'notebook.freezed.dart';
part 'notebook.g.dart';

@freezed
abstract class Notebook with _$Notebook {
  factory Notebook(List<Note> notes) = _Notebook;

  factory Notebook.fromJson(Map<String, dynamic> json) =>
      _$NotebookFromJson(json);
}
