import 'package:notebook_stable/data/models/note.dart';

abstract class NotebookRepo {
  Future<List<Note>> getAllNotes();
}
